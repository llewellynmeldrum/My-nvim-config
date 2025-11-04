local M = {}
--- Identifies and toggles booleans within a given 'scope' via their string based keys.
--- Should work with string bools (i.e "yes"=true, "no"=false) and regular booleans.
-- @param scope   (table)
-- @param ...     (number)
function M.toggle_bools(scope, ...)
    local fields = { ... }
    return function()
        for _, field_name in ipairs(fields) do
            local before = scope[field_name]
            if type(before) == "boolean" then
                scope[field_name] = not before
            end
            if type(before) == "string" then
                if before == "yes" then
                    scope[field_name] = "no"
                else
                    if before == "no" then
                        scope[field_name] = "yes"
                    else
                        -- nothing
                    end
                end
            end
        end
    end
end
return M
