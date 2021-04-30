function lab10
global vendor;
vendor.money = 0.00;
vendor.fig = figure('numbertitle', 'off', 'name', 'Vending Machine');
vendor.moneyDisplayMessage = uicontrol('style', 'text', 'units', 'normalized', ...
    'position',[.034 .78 .09 .095], 'string', 'Money in Machine', 'horizontalalignment', 'right');
vendor.moneyDisplay = uicontrol('style', 'text', 'units', 'normalized', 'position',[.15 .78 .09 .05],...
    'string', num2str(vendor.money), 'horizontalalignment', 'right');
vendor.quarterSlot = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.034 .007 .14 .05],...
    'string', 'Add 25c', 'callback', {@addMoney,.25});
vendor.dollarSlot = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.244 .007 .14 .05],...
    'string', 'Add $1', 'callback', {@addMoney,1});
vendor.products(1) = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.50 .76 .18 .05], 'string', 'XXTRA Flamin Hot Cheetos',...
    'callback', {@vendProduct, 1.5, 1});
vendor.stock(1) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.90 .75 .05 .05], 'string',...
    '5', 'horizontalalignment', 'right');
vendor.price(1) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.42 .76 .05 .05], 'string',...
    '$1.50', 'horizontalalignment', 'right');
vendor.stockText(1) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.70 .76 .15 .05], 'string',...
    'Current Stock', 'horizontalalignment', 'right');
vendor.products(2) = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.50 .71 .18 .05], 'string', 'water',...
    'callback', {@vendProduct, 2.0, 2});
vendor.stock(2) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.90 .71 .05 .05], 'string',...
    '10', 'horizontalalignment', 'right');
vendor.price(2) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.42 .71 .05 .05], 'string',...
    '$2.00', 'horizontalalignment', 'right');
vendor.stockText(2) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.70 .71 .15 .05], 'string',...
    'Current Stock', 'horizontalalignment', 'right');
vendor.products(3) = uicontrol('style', 'pushbutton', 'units', 'normalized', 'position', [.50 .81 .18 .05], 'string', 'Cheetos',...
    'callback', {@vendProduct, 1.25, 3});
vendor.stock(3) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.90 .80 .05 .05], 'string',...
    '7', 'horizontalalignment', 'right');
vendor.price(3) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.42 .81 .05 .05], 'string',...
    '$1.25', 'horizontalalignment', 'right');
vendor.stockText(3) = uicontrol('style', 'text', 'units', 'normalized', 'position', [.70 .81 .15 .05], 'string',...
    'Current Stock', 'horizontalalignment', 'right');
    function [] = addMoney(source, event, cash)
       vendor.source = vendor;
       
       vendor.money = vendor.money + cash;
       vendor.moneyDisplay.String = num2str(vendor.money);
        
    end
    function [] = vendProduct(source, event, price, index)
        if str2num(vendor.stock(index).String) == 0
            msgbox('Insufficient Stock!', 'Vending Machine Error', 'error', 'modal')
        
        elseif vendor.money < price
            msgbox('Insufficient Funds!', 'Vending Machine Error', 'error', 'modal')
        else
        
        product = ['You recieve a ', source.String];
        msgbox(product, 'Vending Machine Slot', 'modal');
        vendor.money = vendor.money - price;
        vendor.stock(index).String = str2num(vendor.stock(index).String) - 1;
        vendor.moneyDisplay.String = num2str(vendor.money);
        end
    end

end