function safeGetProp(entity, str, index, custom)
    if (engine.in_game()) then
        if (entity ~= nil and str ~= nil) then
            str = tostring(str)
            if (str ~= "") then
                if (index == nil) then
                    local prop;
                    if (custom) then
                        prop = entity:get_prop(str);
                    else
                        prop = playerresources.get_prop(entity, str);
                    end
                    if (prop == nil) then return nil; else return prop; end
                else
                    local prop;
                    if (not custom) then
                        prop = playerresources.get_prop(entity, str, index);
                    end
                    if (prop == nil) then return nil; else return prop; end
                end
                return nil;
            end
            return nil;
        end
        return nil;
    end
    return nil;
end
