classdef calculator_exported < matlab.apps.AppBase
    % CALCULATOR_EXPORTED Cross-version compatible calculator application
    %
    % DESCRIPTION:
    %   A full-featured calculator GUI built with MATLAB App Designer that
    %   maintains compatibility across MATLAB versions R2019 through current
    %   releases. Automatically detects and handles version-specific TextArea
    %   behavior differences.
    %
    % VERSION COMPATIBILITY:
    %   R2019 and earlier: TextArea.Value is a cell array ? {'text'}
    %   R2020+           : TextArea.Value is a string     ? "text"
    %
    % FEATURES:
    %   - Digit input (0-9)
    %   - Basic operators (+, -, ×, ÷)
    %   - Parentheses for grouping
    %   - Decimal point support
    %   - Clear and delete functionality
    %   - Safe expression evaluation with error handling
    %
    % USAGE:
    %   app = calculator_exported();
    %
    % AUTHOR: [Your Name]
    % DATE: [Date]
    % VERSION: 1.0
    
    % =====================================================================
    % PUBLIC PROPERTIES - UI Components
    % =====================================================================
    properties (Access = public)
        UIFigure                matlab.ui.Figure
        GridLayout              matlab.ui.container.GridLayout
        ResultTextAreaLabel     matlab.ui.control.Label
        ResultTextArea          matlab.ui.control.TextArea
        CButton                 matlab.ui.control.Button
        DeleteButton            matlab.ui.control.Button
        RightParButton          matlab.ui.control.Button
        LeftParButton           matlab.ui.control.Button
        SevenButton             matlab.ui.control.Button
        EightButton             matlab.ui.control.Button
        NineButton              matlab.ui.control.Button
        DivideButton            matlab.ui.control.Button
        FourButton              matlab.ui.control.Button
        FiveButton              matlab.ui.control.Button
        SixButton               matlab.ui.control.Button
        xButton                 matlab.ui.control.Button
        OneButton               matlab.ui.control.Button
        TwoButton               matlab.ui.control.Button
        ThreeButton             matlab.ui.control.Button
        MinusButton             matlab.ui.control.Button
        ZeroButton              matlab.ui.control.Button
        DotButton               matlab.ui.control.Button
        PlusButton              matlab.ui.control.Button
        EqualsButton            matlab.ui.control.Button
    end
    
    % =====================================================================
    % PRIVATE PROPERTIES - Internal State
    % =====================================================================
    properties (Access = private)
        UseLegacyTextArea (1,1) logical = false
        % Flag indicating if MATLAB uses cell array textarea values (R2019-)
    end
    
    % =====================================================================
    % CONSTANT PROPERTIES - Configuration
    % =====================================================================
    properties (Constant, Access = private)
        % Calculator button layout definition
        BUTTON_LAYOUT = {
            'C',  'Delete', '(',  ')';
            '7',  '8',      '9',  '/';
            '4',  '5',      '6',  'x';
            '1',  '2',      '3',  '-';
            '0',  '.',      '=',  '+'
        }
        
        % Version threshold for legacy behavior
        LEGACY_YEAR_THRESHOLD = 2019
        
        % UI Layout constants
        FIGURE_WIDTH = 640
        FIGURE_HEIGHT = 480
        FONT_SIZE = 26
        GRID_ROWS = 6
        GRID_COLS = 4
    end
    
    % =====================================================================
    % COMPONENT INITIALIZATION METHODS
    % =====================================================================
    methods (Access = private)
        
        function detectVersion(app)
            % DETECTVERSION Determine MATLAB version and set TextArea mode
            %
            % SYNTAX:
            %   detectVersion(app)
            %
            % DESCRIPTION:
            %   Analyzes the MATLAB version and sets UseLegacyTextArea flag
            %   to handle version-specific TextArea.Value behavior.
            %
            % SEE ALSO: getText, setText
            
            v = ver('MATLAB');
            year = str2double(v.Date(end-3:end));
            app.UseLegacyTextArea = (year <= app.LEGACY_YEAR_THRESHOLD);
        end
        
        function createComponents(app)
            % CREATECOMPONENTS Initialize all UI components
            %
            % SYNTAX:
            %   createComponents(app)
            %
            % DESCRIPTION:
            %   Creates the main figure, grid layout, display area, and all
            %   calculator buttons according to BUTTON_LAYOUT definition.
            %
            % SEE ALSO: createFigure, createButtons
            
            app.createFigure();
            app.createDisplayArea();
            app.createButtons();
            app.UIFigure.Visible = 'on';
        end
        
        function createFigure(app)
            % CREATEFIGURE Initialize main application window and grid layout
            %
            % SYNTAX:
            %   createFigure(app)
            %
            % DESCRIPTION:
            %   Creates the UIFigure and configures the grid layout with
            %   appropriate rows and columns for the calculator interface.
            
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100, 100, app.FIGURE_WIDTH, app.FIGURE_HEIGHT];
            app.UIFigure.Name = 'Calculator';
            
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = repmat({'1x'}, 1, app.GRID_COLS);
            app.GridLayout.RowHeight = repmat({'1x'}, 1, app.GRID_ROWS);
        end
        
        function createDisplayArea(app)
            % CREATEDISPLAYAREA Initialize result display label and text area
            %
            % SYNTAX:
            %   createDisplayArea(app)
            %
            % DESCRIPTION:
            %   Creates and configures the "Result" label and text area
            %   for displaying calculator input and output.
            
            % Result Label
            app.ResultTextAreaLabel = uilabel(app.GridLayout);
            app.ResultTextAreaLabel.HorizontalAlignment = 'center';
            app.ResultTextAreaLabel.VerticalAlignment = 'center';
            app.ResultTextAreaLabel.FontSize = app.FONT_SIZE;
            app.ResultTextAreaLabel.Layout.Row = 1;
            app.ResultTextAreaLabel.Layout.Column = 1;
            app.ResultTextAreaLabel.Text = 'Result';
            
            % Text Area
            app.ResultTextArea = uitextarea(app.GridLayout);
            app.ResultTextArea.HorizontalAlignment = 'center';
            app.ResultTextArea.FontSize = app.FONT_SIZE;
            app.ResultTextArea.FontAngle = 'italic';
            app.ResultTextArea.Layout.Row = 1;
            app.ResultTextArea.Layout.Column = [2, 4];
        end
        
        function createButtons(app)
            % CREATEBUTTONS Generate all calculator buttons from layout definition
            %
            % SYNTAX:
            %   createButtons(app)
            %
            % DESCRIPTION:
            %   Iterates through BUTTON_LAYOUT and creates buttons for each
            %   position, then assigns them to their corresponding properties.
            %
            % SEE ALSO: assignButtonHandles
            
            [nRows, nCols] = size(app.BUTTON_LAYOUT);
            btnHandles = cell(nRows, nCols);
            
            for r = 1:nRows
                for c = 1:nCols
                    btn = uibutton(app.GridLayout, 'push');
                    btn.Text = app.BUTTON_LAYOUT{r, c};
                    btn.Layout.Row = r + 1;  % Offset by 1 for display row
                    btn.Layout.Column = c;
                    btnHandles{r, c} = btn;
                end
            end
            
            app.assignButtonHandles(btnHandles);
        end
        
        function assignButtonHandles(app, btnHandles)
            % ASSIGNBUTTONHANDLES Map button handles to named properties
            %
            % SYNTAX:
            %   assignButtonHandles(app, btnHandles)
            %
            % INPUT:
            %   btnHandles - Cell array of button handles matching BUTTON_LAYOUT
            %
            % DESCRIPTION:
            %   Assigns each button from the grid to its corresponding
            %   named property for callback registration.
            
            % Row 1: C, Delete, (, )
            app.CButton = btnHandles{1, 1};
            app.DeleteButton = btnHandles{1, 2};
            app.LeftParButton = btnHandles{1, 3};
            app.RightParButton = btnHandles{1, 4};
            
            % Row 2: 7, 8, 9, /
            app.SevenButton = btnHandles{2, 1};
            app.EightButton = btnHandles{2, 2};
            app.NineButton = btnHandles{2, 3};
            app.DivideButton = btnHandles{2, 4};
            
            % Row 3: 4, 5, 6, x
            app.FourButton = btnHandles{3, 1};
            app.FiveButton = btnHandles{3, 2};
            app.SixButton = btnHandles{3, 3};
            app.xButton = btnHandles{3, 4};
            
            % Row 4: 1, 2, 3, -
            app.OneButton = btnHandles{4, 1};
            app.TwoButton = btnHandles{4, 2};
            app.ThreeButton = btnHandles{4, 3};
            app.MinusButton = btnHandles{4, 4};
            
            % Row 5: 0, ., =, +
            app.ZeroButton = btnHandles{5, 1};
            app.DotButton = btnHandles{5, 2};
            app.EqualsButton = btnHandles{5, 3};
            app.PlusButton = btnHandles{5, 4};
        end
    end
    
    % =====================================================================
    % TEXT AREA MANIPULATION - Cross-Version Compatible
    % =====================================================================
    methods (Access = private)
        
        function txt = getText(app)
            % GETTEXT Retrieve current text area content as string
            %
            % SYNTAX:
            %   txt = getText(app)
            %
            % OUTPUT:
            %   txt - String containing current text area value
            %
            % DESCRIPTION:
            %   Safely retrieves text area content, handling differences
            %   between MATLAB versions (cell array vs. string).
            %
            % SEE ALSO: setText
            
            if app.UseLegacyTextArea
                if isempty(app.ResultTextArea.Value)
                    txt = "";
                else
                    txt = string(app.ResultTextArea.Value{1});
                end
            else
                txt = string(app.ResultTextArea.Value);
            end
        end
        
        function setText(app, txt)
            % SETTEXT Update text area content safely across MATLAB versions
            %
            % SYNTAX:
            %   setText(app, txt)
            %
            % INPUT:
            %   txt - String or character array to display
            %
            % DESCRIPTION:
            %   Sets text area value using appropriate format for the
            %   detected MATLAB version (cell array or string).
            %
            % SEE ALSO: getText
            
            if app.UseLegacyTextArea
                app.ResultTextArea.Value = {char(txt)};
            else
                app.ResultTextArea.Value = txt;
            end
        end
        
        function append(app, charToAdd)
            % APPEND Add character(s) to current text area content
            %
            % SYNTAX:
            %   append(app, charToAdd)
            %
            % INPUT:
            %   charToAdd - Character or string to append
            %
            % DESCRIPTION:
            %   Concatenates new character(s) to existing text area content.
            %
            % SEE ALSO: getText, setText
            
            current = app.getText();
            newText = current + string(charToAdd);
            app.setText(newText);
        end
        
        function evaluateExpression(app)
            % EVALUATEEXPRESSION Parse and compute mathematical expression
            %
            % SYNTAX:
            %   evaluateExpression(app)
            %
            % DESCRIPTION:
            %   Retrieves current expression, converts display operators to
            %   MATLAB operators, evaluates the expression, and displays
            %   the result. Shows "Error" if evaluation fails.
            %
            % EXAMPLE:
            %   Input:  "2x(3+4)"
            %   Output: "14"
            %
            % SEE ALSO: normalizeExpression
            
            expr = app.getText();
            expr = app.normalizeExpression(expr);
            
            try
                result = eval(expr);
                app.setText(num2str(result));
            catch ME
                app.setText("Error");
                warning('Calculator:EvaluationError', ...
                    'Failed to evaluate expression: %s\nReason: %s', ...
                    expr, ME.message);
            end
        end
        
        function normalizedExpr = normalizeExpression(~, expr)
            % NORMALIZEEXPRESSION Convert display operators to MATLAB syntax
            %
            % SYNTAX:
            %   normalizedExpr = normalizeExpression(app, expr)
            %
            % INPUT:
            %   expr - Expression string with display operators
            %
            % OUTPUT:
            %   normalizedExpr - Expression with MATLAB-compatible operators
            %
            % DESCRIPTION:
            %   Replaces calculator display symbols (×, ÷, x) with MATLAB
            %   operators (*, /) for evaluation.
            %
            % EXAMPLE:
            %   Input:  "5x3÷2"
            %   Output: "5*3/2"
            
            normalizedExpr = expr;
            
            % Define operator mappings (display -> MATLAB)
            operatorMappings = {
                'x', '*';
                '÷', '/'
            };
            
            % Replace each display operator with MATLAB equivalent
            for i = 1:size(operatorMappings, 1)
                displayOp = operatorMappings{i, 1};
                matlabOp = operatorMappings{i, 2};
                normalizedExpr = replace(normalizedExpr, displayOp, matlabOp);
            end
        end
    end
    
    % =====================================================================
    % CALLBACK HANDLERS
    % =====================================================================
    methods (Access = private)
        
        function digitButtonPushed(app, value)
            % DIGITBUTTONPUSHED Handle digit button press (0-9)
            %
            % SYNTAX:
            %   digitButtonPushed(app, value)
            %
            % INPUT:
            %   value - String representing the digit pressed
            %
            % DESCRIPTION:
            %   Appends the pressed digit to the current expression.
            
            app.append(value);
        end
        
        function operatorButtonPushed(app, op)
            % OPERATORBUTTONPUSHED Handle operator button press (+,-,×,÷)
            %
            % SYNTAX:
            %   operatorButtonPushed(app, op)
            %
            % INPUT:
            %   op - String representing the operator pressed
            %
            % DESCRIPTION:
            %   Appends the pressed operator to the current expression.
            
            app.append(op);
        end
        
        function parenthesisButtonPushed(app, paren)
            % PARENTHESISBUTTONPUSHED Handle parenthesis button press
            %
            % SYNTAX:
            %   parenthesisButtonPushed(app, paren)
            %
            % INPUT:
            %   paren - String representing the parenthesis ('(' or ')')
            %
            % DESCRIPTION:
            %   Appends the pressed parenthesis to the current expression.
            
            app.append(paren);
        end
        
        function dotButtonPushed(app)
            % DOTBUTTONPUSHED Handle decimal point button press
            %
            % SYNTAX:
            %   dotButtonPushed(app)
            %
            % DESCRIPTION:
            %   Appends a decimal point to the current expression.
            
            app.append('.');
        end
        
        function clearButtonPushed(app)
            % CLEARBUTTONPUSHED Handle clear (C) button press
            %
            % SYNTAX:
            %   clearButtonPushed(app)
            %
            % DESCRIPTION:
            %   Clears all content from the text area, resetting the calculator.
            
            app.setText("");
        end
        
        function deleteButtonPushed(app)
            % DELETEBUTTONPUSHED Handle delete button press
            %
            % SYNTAX:
            %   deleteButtonPushed(app)
            %
            % DESCRIPTION:
            %   Removes the last character from the current expression.
            %   Does nothing if the text area is empty.
            
            txt = app.getText();
            if strlength(txt) > 0
                txt = extractBefore(txt, strlength(txt));
                app.setText(txt);
            end
        end
        
        function equalsButtonPushed(app)
            % EQUALSBUTTONPUSHED Handle equals (=) button press
            %
            % SYNTAX:
            %   equalsButtonPushed(app)
            %
            % DESCRIPTION:
            %   Evaluates the current mathematical expression and displays
            %   the result or an error message.
            %
            % SEE ALSO: evaluateExpression
            
            app.evaluateExpression();
        end
    end
    
    % =====================================================================
    % CALLBACK REGISTRATION
    % =====================================================================
    methods (Access = private)
        
        function startupFcn(app)
            % STARTUPFCN Register all button callbacks
            %
            % SYNTAX:
            %   startupFcn(app)
            %
            % DESCRIPTION:
            %   Wires up all button callbacks to their respective handler
            %   methods. Called once during app initialization.
            %
            % SEE ALSO: registerDigitCallbacks, registerOperatorCallbacks
            
            app.registerDigitCallbacks();
            app.registerOperatorCallbacks();
            app.registerParenthesisCallbacks();
            app.registerUtilityCallbacks();
        end
        
        function registerDigitCallbacks(app)
            % REGISTERDIGITCALLBACKS Wire digit buttons (0-9) to handlers
            %
            % SYNTAX:
            %   registerDigitCallbacks(app)
            %
            % DESCRIPTION:
            %   Associates each digit button with digitButtonPushed callback.
            
            digitButtons = {
                app.ZeroButton,  '0';
                app.OneButton,   '1';
                app.TwoButton,   '2';
                app.ThreeButton, '3';
                app.FourButton,  '4';
                app.FiveButton,  '5';
                app.SixButton,   '6';
                app.SevenButton, '7';
                app.EightButton, '8';
                app.NineButton,  '9'
            };
            
            for i = 1:size(digitButtons, 1)
                btn = digitButtons{i, 1};
                val = digitButtons{i, 2};
                btn.ButtonPushedFcn = @(~,~) app.digitButtonPushed(val);
            end
        end
        
        function registerOperatorCallbacks(app)
            % REGISTEROPERATORCALLBACKS Wire operator buttons to handlers
            %
            % SYNTAX:
            %   registerOperatorCallbacks(app)
            %
            % DESCRIPTION:
            %   Associates each operator button with operatorButtonPushed.
            
            operatorButtons = {
                app.PlusButton,   '+';
                app.MinusButton,  '-';
                app.xButton,      'x';
                app.DivideButton, '/'
            };
            
            for i = 1:size(operatorButtons, 1)
                btn = operatorButtons{i, 1};
                op = operatorButtons{i, 2};
                btn.ButtonPushedFcn = @(~,~) app.operatorButtonPushed(op);
            end
        end
        
        function registerParenthesisCallbacks(app)
            % REGISTERPARENTHESISCALLBACKS Wire parenthesis buttons to handlers
            %
            % SYNTAX:
            %   registerParenthesisCallbacks(app)
            %
            % DESCRIPTION:
            %   Associates parenthesis buttons with parenthesisButtonPushed.
            
            app.LeftParButton.ButtonPushedFcn = ...
                @(~,~) app.parenthesisButtonPushed('(');
            app.RightParButton.ButtonPushedFcn = ...
                @(~,~) app.parenthesisButtonPushed(')');
        end
        
        function registerUtilityCallbacks(app)
            % REGISTERUTILITYCALLBACKS Wire utility buttons to handlers
            %
            % SYNTAX:
            %   registerUtilityCallbacks(app)
            %
            % DESCRIPTION:
            %   Associates dot, clear, delete, and equals buttons with
            %   their respective handler methods.
            
            app.DotButton.ButtonPushedFcn = @(~,~) app.dotButtonPushed();
            app.CButton.ButtonPushedFcn = @(~,~) app.clearButtonPushed();
            app.DeleteButton.ButtonPushedFcn = @(~,~) app.deleteButtonPushed();
            app.EqualsButton.ButtonPushedFcn = @(~,~) app.equalsButtonPushed();
        end
    end
    
    % =====================================================================
    % PUBLIC INTERFACE
    % =====================================================================
    methods (Access = public)
        
        function app = calculator_exported()
            % CALCULATOR_EXPORTED Constructor for calculator application
            %
            % SYNTAX:
            %   app = calculator_exported()
            %
            % OUTPUT:
            %   app - Calculator application object
            %
            % DESCRIPTION:
            %   Creates and initializes a new calculator application instance.
            %   Detects MATLAB version, creates UI components, and registers
            %   all callbacks.
            %
            % EXAMPLE:
            %   calc = calculator_exported();
            
            detectVersion(app);
            createComponents(app);
            registerApp(app, app.UIFigure);
            startupFcn(app);
            
            if nargout == 0
                clear app
            end
        end
        
        function delete(app)
            % DELETE Destructor for calculator application
            %
            % SYNTAX:
            %   delete(app)
            %
            % DESCRIPTION:
            %   Cleans up resources and closes the calculator window.
            
            delete(app.UIFigure);
        end
    end
end