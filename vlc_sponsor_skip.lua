--[[----------------------------------------
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/.
--------------------------------------------
"vlc_speed_controller.lua" > Put this VLC Extension Lua script file in \lua\extensions\ folder
--------------------------------------------
INSTALLATION directory:
* Windows (all users): %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* Windows (current user): %APPDATA%\VLC\lua\extensions\
* Linux (all users): /usr/lib/vlc/lua/extensions/
* Linux (current user): ~/.local/share/vlc/lua/extensions/
* Mac OS X (all users): /Applications/VLC.app/Contents/MacOS/share/lua/extensions/
* Mac OS X (current user): /Users/%your_name%/Library/Application Support/org.videolan.vlc/lua/extensions/
--------------------------------------------
To use extension: View > VLC Speed Controller
--]]----------------------------------------


---------------- Standard VLC extension functions that must/can be implemented ---------------------


function descriptor()
    Log("descriptor")
    local icon_string = "\137\80\78\71\13\10\26\10\0\0\0\13\73\72\68\82\0\0\0\64\0\0\0\64\8\0\0\0\0\143\2\46\2\0\0\0\4\103\65\77\65\0\0\177\143\11\252\97\5\0\0\0\32\99\72\82\77\0\0\122\38\0\0\128\132\0\0\250\0\0\0\128\232\0\0\117\48\0\0\234\96\0\0\58\152\0\0\23\112\156\186\81\60\0\0\0\2\98\75\71\68\0\255\135\143\204\191\0\0\0\9\112\72\89\115\0\0\18\116\0\0\18\116\1\222\102\31\120\0\0\0\7\116\73\77\69\7\229\8\10\13\19\11\43\117\128\125\0\0\7\223\73\68\65\84\88\195\157\87\107\140\85\213\21\254\214\222\231\156\123\239\220\25\102\144\135\3\202\136\32\85\112\20\49\98\161\81\139\66\65\209\90\41\88\107\20\107\227\187\20\43\137\177\10\218\104\99\171\77\170\166\181\41\90\53\66\213\216\152\88\109\21\149\164\62\64\91\171\1\138\60\44\165\60\134\135\142\51\4\102\238\220\123\30\247\156\179\247\215\31\247\14\76\185\3\163\236\31\39\103\157\189\214\183\215\123\237\35\33\142\182\40\36\33\34\148\35\112\56\71\23\71\234\100\5\54\50\26\71\128\144\240\104\242\86\101\195\237\157\234\196\209\78\0\213\63\194\145\0\8\64\140\151\46\95\182\53\68\227\25\55\93\89\182\253\35\244\15\64\177\22\64\174\253\250\183\179\89\5\19\36\55\254\70\27\245\165\53\160\24\207\37\176\255\210\143\135\27\11\64\169\125\215\46\139\129\126\84\112\250\151\175\251\98\197\158\145\87\45\249\248\248\178\0\128\177\195\159\159\178\160\212\31\115\191\26\152\252\59\55\180\9\199\246\36\189\71\82\69\39\255\61\107\229\75\1\144\94\199\55\190\104\178\136\156\67\225\167\46\188\124\185\175\106\17\106\29\67\88\231\165\221\77\177\73\61\71\57\90\107\165\133\16\73\183\192\8\7\246\1\133\6\157\176\66\177\69\91\249\150\115\41\192\126\120\70\215\132\210\169\149\199\160\237\219\60\82\136\233\77\198\42\161\90\215\238\89\211\180\188\227\129\150\160\6\161\198\7\20\253\203\71\147\156\21\213\125\229\139\86\132\176\122\245\108\15\20\118\143\123\109\92\116\184\205\135\209\164\205\222\117\191\174\179\2\49\35\81\12\87\7\137\159\14\203\89\8\229\248\237\55\197\138\60\42\128\216\252\155\191\29\42\70\0\136\129\212\253\226\226\146\167\44\5\16\148\135\124\240\106\214\12\160\1\176\92\208\39\222\13\19\92\139\234\161\66\121\107\192\40\184\221\27\123\243\133\26\78\244\200\40\147\42\175\90\203\116\219\82\61\0\128\148\163\234\241\244\54\119\43\14\47\40\58\107\130\92\175\229\53\137\112\56\128\169\111\106\175\190\229\63\56\167\222\82\32\216\227\146\2\64\210\19\220\88\29\29\32\173\63\119\93\125\34\0\132\153\142\207\43\218\120\149\232\83\153\105\53\42\28\150\7\180\249\127\93\160\50\105\117\243\255\245\118\187\191\182\58\111\14\171\233\195\243\66\251\147\158\140\187\8\17\145\131\156\21\194\238\27\244\228\224\68\6\200\68\138\201\191\251\224\134\200\214\196\75\229\167\222\63\209\31\48\149\41\48\57\179\227\64\63\0\199\143\102\84\91\76\181\181\0\49\146\173\109\160\20\19\161\86\190\223\134\34\100\109\221\227\8\227\197\169\158\202\94\231\18\32\164\255\33\66\84\216\216\39\70\14\40\180\4\20\132\82\125\135\168\62\4\148\34\132\149\42\210\32\132\182\151\7\144\64\200\172\162\216\176\34\148\17\2\18\89\85\37\132\146\38\2\106\143\0\36\54\2\186\14\1\73\202\90\40\18\18\217\53\111\119\53\207\104\141\32\20\179\162\71\19\39\77\117\19\69\225\27\93\14\37\154\248\245\72\220\47\86\42\0\118\86\115\194\236\71\27\50\214\61\97\226\144\16\66\4\126\122\175\100\71\228\212\146\52\8\130\114\215\201\240\92\7\231\239\78\253\32\244\91\161\197\197\34\22\75\92\5\37\162\176\138\165\34\23\193\21\65\243\227\105\16\4\40\242\117\92\221\94\216\59\31\191\99\49\136\122\198\78\219\245\233\127\159\194\60\150\130\48\60\235\140\205\27\55\174\223\93\14\74\252\16\139\219\214\111\252\228\64\20\20\185\56\243\183\45\235\94\158\130\7\88\10\80\228\93\178\133\61\236\252\246\31\232\7\81\79\203\44\166\9\111\206\238\74\253\48\108\157\100\173\177\73\16\150\248\79\60\198\216\216\40\8\139\188\219\105\99\202\210\121\206\38\91\82\64\35\255\141\124\57\247\234\13\161\2\32\38\45\245\96\76\84\208\4\64\90\107\18\169\134\208\50\177\149\209\80\54\97\33\255\211\244\117\161\82\230\251\39\93\117\235\187\97\189\241\133\0\232\56\245\131\177\234\184\230\68\0\73\119\238\216\209\86\237\105\93\29\59\183\237\83\213\28\80\202\77\91\243\107\33\8\125\179\245\198\33\24\254\131\79\172\31\6\81\97\236\153\207\46\125\114\14\22\179\20\132\254\100\207\115\49\188\61\246\75\124\63\159\215\25\92\195\98\80\228\221\206\86\235\7\229\3\35\103\208\119\168\252\150\167\30\254\232\207\47\188\242\202\69\190\130\205\110\253\17\57\120\201\226\72\1\146\52\223\97\108\93\214\10\161\131\185\211\130\184\213\30\170\127\137\203\89\208\1\234\81\108\184\120\246\205\211\30\188\80\0\237\79\121\209\87\199\53\70\20\66\210\161\139\64\148\173\0\138\23\44\72\92\83\174\218\64\152\220\174\253\167\130\14\212\99\219\31\181\61\234\220\137\29\161\54\128\245\154\83\149\250\170\226\44\227\91\192\17\2\68\8\95\43\125\176\187\122\88\134\153\16\199\230\214\188\120\218\66\87\111\222\112\65\157\175\0\45\136\84\165\22\0\229\212\145\42\77\5\16\100\81\231\32\134\0\162\93\229\22\151\46\189\228\162\80\57\146\62\210\118\251\115\103\23\87\120\247\2\16\148\74\80\34\149\90\163\217\52\217\234\174\91\239\44\9\98\252\250\249\68\149\159\157\236\3\81\249\10\39\222\211\61\253\41\80\57\42\30\182\226\217\191\188\151\249\222\29\227\3\77\202\101\35\15\53\35\206\60\133\212\13\141\16\97\211\92\198\34\177\71\1\206\188\212\75\156\169\51\46\115\98\69\9\196\234\12\83\173\210\178\64\32\25\27\11\33\36\32\226\41\10\37\141\41\162\50\4\32\101\163\64\215\161\16\18\80\83\42\115\129\73\66\186\25\134\194\208\5\29\137\93\151\82\182\70\217\80\64\207\179\145\245\197\73\64\207\75\4\150\18\199\146\173\75\18\69\9\152\45\124\52\108\82\98\188\240\195\134\201\41\146\206\19\81\72\70\124\214\214\80\154\208\176\119\79\211\132\212\102\187\62\30\62\169\172\194\238\17\86\23\226\97\169\179\127\87\212\210\18\238\232\62\101\68\164\244\61\117\155\110\43\172\92\53\61\183\253\150\206\85\239\204\114\123\206\27\63\254\133\15\166\109\120\250\233\242\25\67\111\95\243\254\222\243\245\250\5\61\43\214\205\116\55\60\250\221\176\238\213\149\51\252\252\227\207\28\168\31\191\237\198\112\249\132\81\9\74\156\247\26\147\199\182\241\186\231\201\91\126\207\29\23\94\97\158\249\57\205\222\107\25\112\254\150\142\217\145\157\179\146\188\234\37\254\227\122\22\248\220\18\118\241\222\63\50\224\218\249\252\213\195\44\42\175\221\126\179\24\254\164\165\16\206\44\98\206\38\132\167\95\246\80\163\69\226\167\101\3\60\184\96\110\102\183\115\126\23\102\175\175\182\91\128\200\61\113\219\127\224\237\88\184\246\59\86\41\51\40\233\106\104\216\214\61\200\116\54\96\103\35\156\3\55\116\252\117\48\68\107\45\112\175\48\223\98\83\212\61\24\187\142\131\184\240\128\44\28\36\243\30\26\141\228\244\179\135\156\22\40\149\230\47\89\176\250\137\133\101\153\115\231\219\207\253\233\58\32\192\157\175\4\16\91\2\80\60\235\154\197\210\56\253\199\239\63\177\250\106\232\157\111\109\129\93\255\94\59\162\61\91\62\131\233\254\97\199\203\245\70\223\151\76\201\189\94\186\175\197\63\103\208\27\251\239\153\16\75\253\152\161\227\71\143\73\81\127\42\149\62\113\242\129\81\238\20\251\102\249\103\163\226\76\225\211\161\227\156\206\173\99\71\58\187\62\29\54\54\105\104\29\183\175\53\149\0\204\9\146\68\217\172\66\26\43\184\137\205\48\129\184\177\208\75\109\38\38\178\144\36\17\149\65\26\59\30\146\196\115\144\38\202\141\28\29\139\4\128\33\180\162\24\66\41\208\106\24\81\160\213\20\163\96\149\208\86\118\12\148\178\182\247\65\171\45\53\37\56\216\31\8\64\64\84\230\28\171\68\117\163\151\56\196\89\237\109\125\175\56\210\251\144\190\196\193\139\138\212\50\162\191\219\250\87\92\135\0\40\60\22\128\62\38\16\95\29\65\232\0\21\127\29\235\114\0\247\216\165\153\136\163\194\203\63\247\142\201\122\168\210\212\101\161\67\105\22\247\24\1\130\161\132\4\200\30\249\215\124\0\3\196\150\197\1\252\190\31\191\34\148\230\255\0\173\118\74\170\112\109\6\74\0\0\0\37\116\69\88\116\100\97\116\101\58\99\114\101\97\116\101\0\50\48\50\49\45\48\56\45\49\48\84\49\51\58\49\57\58\48\52\43\48\48\58\48\48\124\162\137\85\0\0\0\37\116\69\88\116\100\97\116\101\58\109\111\100\105\102\121\0\50\48\50\49\45\48\56\45\49\48\84\49\51\58\49\57\58\48\52\43\48\48\58\48\48\13\255\49\233\0\0\0\0\73\69\78\68\174\66\96\130"
    return {
        title = "VLC Speed Controller";
        version = "1.0";
        author = "Andrei Hutu";
        url = "https://github.com/Anndrey24/VLC_Speed_Controller";
        description = [[
VLC Speed Controller
This extension allows you to quickly switch between 1.0x speed and a user configurable target speed, while also providing a GUI for playback control.
]];
        -- capabilities = {"menu"};
        capabilities = {};
        icon = icon_string ;
    }
end

function activate()
    Log("activate")
    Log("lgZBlD-TCFE => d2f628107f0ae76a68b4d12d7721487d3c8df53175374abeafab47ddc83e2909")
    h = sha256("lgZBlD-TCFE");
    Log(h);
    r = getSkipSegments(h:sub(0,4));
    Log(r);
    Log(json_decode(r));
end

function deactivate()
    Log("deactivate")
end

-- function close()
--     Log("close")
-- end

function meta_changed()
    Log("meta_changed")
end

------------------------------------
-- Adapted from:
-- https://github.com/rxi/json.lua/blob/dbf4b2dd2eb7c23be2773c89eb059dadd6436f94/json.lua

local space_chars = {
    [" "] = true,
    ["\t"] = true,
    ["\r"] = true,
    ["\n"] = true,
}
local delim_chars = {
    [" "] = true,
    ["\t"] = true,
    ["\r"] = true,
    ["\n"] = true,
    ["]"] = true,
    ["}"] = true,
    [","] = true,
}
local escape_chars = {
    ["\\"] = true,
    ["/"] = true,
    ['"'] = true,
    ["b"] = true,
    ["f"] = true,
    ["n"] = true,
    ["r"] = true,
    ["t"] = true,
    ["u"] = true,
}
local literals = {
    ["true"] = true,
    ["false"] = true,
    ["null"] = true,
}

local literal_map = {
  [ "true"  ] = true,
  [ "false" ] = false,
  [ "null"  ] = nil,
}


local function next_char(str, idx, set, negate)
  for i = idx, #str do
    if set[str:sub(i, i)] ~= negate then
      return i
    end
  end
  return #str + 1
end


local function decode_error(str, idx, msg)
  local line_count = 1
  local col_count = 1
  for i = 1, idx - 1 do
    col_count = col_count + 1
    if str:sub(i, i) == "\n" then
      line_count = line_count + 1
      col_count = 1
    end
  end
  error( string.format("%s at line %d col %d", msg, line_count, col_count) )
end


local function codepoint_to_utf8(n)
  -- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
  local f = math.floor
  if n <= 0x7f then
    return string.char(n)
  elseif n <= 0x7ff then
    return string.char(f(n / 64) + 192, n % 64 + 128)
  elseif n <= 0xffff then
    return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
  elseif n <= 0x10ffff then
    return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128,
                       f(n % 4096 / 64) + 128, n % 64 + 128)
  end
  error( string.format("invalid unicode codepoint '%x'", n) )
end


local function parse_unicode_escape(s)
  local n1 = tonumber( s:sub(1, 4),  16 )
  local n2 = tonumber( s:sub(7, 10), 16 )
   -- Surrogate pair?
  if n2 then
    return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
  else
    return codepoint_to_utf8(n1)
  end
end


local function parse_string(str, i)
  local res = ""
  local j = i + 1
  local k = j

  while j <= #str do
    local x = str:byte(j)

    if x < 32 then
      decode_error(str, j, "control character in string")

    elseif x == 92 then -- `\`: Escape
      res = res .. str:sub(k, j - 1)
      j = j + 1
      local c = str:sub(j, j)
      if c == "u" then
        local hex = str:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", j + 1)
                 or str:match("^%x%x%x%x", j + 1)
                 or decode_error(str, j - 1, "invalid unicode escape in string")
        res = res .. parse_unicode_escape(hex)
        j = j + #hex
      else
        if not escape_chars[c] then
          decode_error(str, j - 1, "invalid escape char '" .. c .. "' in string")
        end
        res = res .. escape_char_map_inv[c]
      end
      k = j + 1

    elseif x == 34 then -- `"`: End of string
      res = res .. str:sub(k, j - 1)
      return res, j + 1
    end

    j = j + 1
  end

  decode_error(str, i, "expected closing quote for string")
end


local function parse_number(str, i)
  local x = next_char(str, i, delim_chars)
  local s = str:sub(i, x - 1)
  local n = tonumber(s)
  if not n then
    decode_error(str, i, "invalid number '" .. s .. "'")
  end
  return n, x
end


local function parse_literal(str, i)
  local x = next_char(str, i, delim_chars)
  local word = str:sub(i, x - 1)
  if not literals[word] then
    decode_error(str, i, "invalid literal '" .. word .. "'")
  end
  return literal_map[word], x
end


local function parse_array(str, i)
  local res = {}
  local n = 1
  i = i + 1
  while 1 do
    local x
    i = next_char(str, i, space_chars, true)
    -- Empty / end of array?
    if str:sub(i, i) == "]" then
      i = i + 1
      break
    end
    -- Read token
    x, i = parse(str, i)
    res[n] = x
    n = n + 1
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "]" then break end
    if chr ~= "," then decode_error(str, i, "expected ']' or ','") end
  end
  return res, i
end


local function parse_object(str, i)
  local res = {}
  i = i + 1
  while 1 do
    local key, val
    i = next_char(str, i, space_chars, true)
    -- Empty / end of object?
    if str:sub(i, i) == "}" then
      i = i + 1
      break
    end
    -- Read key
    if str:sub(i, i) ~= '"' then
      decode_error(str, i, "expected string for key")
    end
    key, i = parse(str, i)
    -- Read ':' delimiter
    i = next_char(str, i, space_chars, true)
    if str:sub(i, i) ~= ":" then
      decode_error(str, i, "expected ':' after key")
    end
    i = next_char(str, i + 1, space_chars, true)
    -- Read value
    val, i = parse(str, i)
    -- Set
    res[key] = val
    -- Next token
    i = next_char(str, i, space_chars, true)
    local chr = str:sub(i, i)
    i = i + 1
    if chr == "}" then break end
    if chr ~= "," then decode_error(str, i, "expected '}' or ','") end
  end
  return res, i
end


local char_func_map = {
  [ '"' ] = parse_string,
  [ "0" ] = parse_number,
  [ "1" ] = parse_number,
  [ "2" ] = parse_number,
  [ "3" ] = parse_number,
  [ "4" ] = parse_number,
  [ "5" ] = parse_number,
  [ "6" ] = parse_number,
  [ "7" ] = parse_number,
  [ "8" ] = parse_number,
  [ "9" ] = parse_number,
  [ "-" ] = parse_number,
  [ "t" ] = parse_literal,
  [ "f" ] = parse_literal,
  [ "n" ] = parse_literal,
  [ "[" ] = parse_array,
  [ "{" ] = parse_object,
}


local function parse(str, idx)
  local chr = str:sub(idx, idx)
  local f = char_func_map[chr]
  if f then
    return f(str, idx)
  end
  decode_error(str, idx, "unexpected character '" .. chr .. "'")
end


function json_decode(str)
  if type(str) ~= "string" then
    error("expected argument of type string, got " .. type(str))
  end
  local res, idx = parse(str, next_char(str, 1, space_chars, true))
  idx = next_char(str, idx, space_chars, true)
  if idx <= #str then
    decode_error(str, idx, "trailing garbage")
  end
  return res
end


------------------------------------

-- function menu()
--     Log("menu")
--     return {"Speed Controller","Settings"}
-- end

-- function trigger_menu(id)
--     Log("trigger_menu")
--     if id == 1 then
--         on_click_cancel()
--         create_dialog_controller()
--     elseif id == 2 then
--         on_click_cancel()
--         create_dialog_settings()
--     end
-- end

----------------------------


 -- http = require("socket.http")
 -- json = require("dkjson")
 -- ltn12 = require("ltn12")
 -- https = require("ssl/https")
 -- https = require("ssl.https")
 require("ssl")
 require("https")
--https://github.com/siffiejoe/lua-amalg

function getSkipSegments(h)
    local response_body = {};
 res, code, response_headers, status = https.request {
    response_body = {},
    method = "GET",
    headers= {
        ["User-Agent"] = "VLCSponsorSkip/0.1.0",
    },
    url = "https://sponsor.ajay.app/api/skipSegments/"..h.."?categories=[%22sponsor%22,%22intro%22,%22outro%22,%22selfpromo%22,%22music_offtopic%22,%22preview%22]",
    -- source = ltn12.source.string(data),
    -- sink = ltn12.sink.table(response_body),
}
Log(code)
Log(response_headers)
return res



  --   local host = "sponsor.ajay.app";
  --   local httpVersion = "1.1";
  --   local userAgent = ;
  --   local path = "/api/skipSegments/"..h.."?categories=[%22sponsor%22,%22intro%22,%22outro%22,%22selfpromo%22,%22music_offtopic%22,%22preview%22]";
  --   -- url = "https://
  -- local header = {
  --   "GET "..path.." HTTP/1.1",
  --   "Host: "..host,
  --   "User-Agent: "..userAgent,
  --   "",
  --   ""
  -- }
  -- local request = table.concat(header, "\r\n")

  -- local status, response = http_req(host, 80, request)
  -- if status == 200 then
  --   return response
  -- else
  --   Log("HTTP "..tostring(status).." : "..response)
  --   return false
  -- end
end

function trim(str)
  if not str then return "" end
  return string.gsub(str, "^[\r\n%s]*(.-)[\r\n%s]*$", "%1")
end

function http_req(host, port, request)
    local fd = vlc.net.connect_tcp(host, port)
    if not fd then
        setError("Unable to connect to server")
        return nil, ""
    end
    local pollfds = {}

    pollfds[fd] = vlc.net.POLLIN
    vlc.net.send(fd, request)
    vlc.net.poll(pollfds)

    local response = vlc.net.recv(fd, 2048)
    local buf = ""
    local headerStr, header, body
    local contentLength, status, TransferEncoding, chunked
    local pct = 0

    while response and #response>0 do
        buf = buf..response

        if not header then
            Log("not header")
            headerStr, body = buf:match("(.-\r?\n)\r?\n(.*)")

            if headerStr then
                header = parse_header(headerStr);
                status = tonumber(header["statuscode"]);
                contentLength = tonumber(header["Content-Length"]);
                if not contentLength then
                    contentLength = tonumber(header["X-Uncompressed-Content-Length"])
                end

                TransferEncoding = trim(header["Transfer-Encoding"]);
                chunked = (TransferEncoding=="chunked");

                buf = body;
                body = "";
            end
        end

        if chunked then
            Log("chunked")
            chunk_size_hex, chunk_content = buf:match("(%x+)\r?\n(.*)")
            chunk_size = tonumber(chunk_size_hex,16)
            chunk_content_len = chunk_content:len()
            chunk_remaining = chunk_size-chunk_content_len

            while chunk_content_len > chunk_size do
                body = body..chunk_content:sub(0, chunk_size)
                buf = chunk_content:sub(chunk_size+2)

                chunk_size_hex, chunk_content = buf:match("(%x+)\r?\n(.*)")

                if not chunk_size_hex
                or chunk_size_hex == "0" then
                    chunk_size = 0
                    break
                end

                chunk_size = tonumber(chunk_size_hex,16)
                chunk_content_len = chunk_content:len()
                chunk_remaining = chunk_size-chunk_content_len
            end

            if chunk_size == 0 then
                break
            end
        end

      if contentLength then
        Log("contentLength")
          if #body == 0 then
            bodyLength = #buf
          else
            bodyLength = #body
          end

            pct = bodyLength / contentLength * 100
            Log("setMessage(openSub.actionLabel..\": \"..progressBarContent(pct))");
            if bodyLength >= contentLength then
                break
            end
        end

        vlc.net.poll(pollfds)
        response = vlc.net.recv(fd, 1024)
    end

    if not chunked then
        Log("not chunked not chunked")
        body = buf
    end

    if status == 301 and header["Location"] then
        Log("redir:"..header["Location"])
        local host, path = parse_url(trim(header["Location"]))
        request = request
        :gsub("^([^%s]+ )([^%s]+)", "%1"..path)
        :gsub("(Host: )([^\n]*)", "%1"..host)

        return http_req(host, port, request)
    end

    return status, body
end

function parse_header(data)
  local header = {}
  
  for name, s, val in string.gmatch(
    data,
    "([^%s:]+)(:?)%s([^\n]+)\r?\n")
  do
    if s == "" then 
    header['statuscode'] = tonumber(string.sub(val, 1 , 3))
    else 
      header[name] = val
    end
  end
  return header
end 

function parse_url(url)
  local url_parsed = vlc.net.url_parse(url)
  return  url_parsed["host"], 
    url_parsed["path"],
    url_parsed["option"]
end



------------------------------------

function Log(lm)
  if vlc then
    vlc.msg.info("[SponsorSkip] " .. lm)
  end
end

------------------------------------
--
--  Adaptation of the Secure Hashing Algorithm (SHA-244/256)
--  Found Here: http://lua-users.org/wiki/SecureHashAlgorithm
--
--  Using an adapted version of the bit library
--  Found Here: https://bitbucket.org/Boolsheet/bslf/src/1ee664885805/bit.lua
--
--  Adapted into a single function by GravityScore
--
function sha256(msg)
        local function band(int1, int2, int3, ...)
                int1 = int1 % 2^32
                int2 = int2 % 2^32
                local ret =
                ((int1%0x00000002>=0x00000001 and int2%0x00000002>=0x00000001 and 0x00000001) or 0)+
                ((int1%0x00000004>=0x00000002 and int2%0x00000004>=0x00000002 and 0x00000002) or 0)+
                ((int1%0x00000008>=0x00000004 and int2%0x00000008>=0x00000004 and 0x00000004) or 0)+
                ((int1%0x00000010>=0x00000008 and int2%0x00000010>=0x00000008 and 0x00000008) or 0)+
                ((int1%0x00000020>=0x00000010 and int2%0x00000020>=0x00000010 and 0x00000010) or 0)+
                ((int1%0x00000040>=0x00000020 and int2%0x00000040>=0x00000020 and 0x00000020) or 0)+
                ((int1%0x00000080>=0x00000040 and int2%0x00000080>=0x00000040 and 0x00000040) or 0)+
                ((int1%0x00000100>=0x00000080 and int2%0x00000100>=0x00000080 and 0x00000080) or 0)+
                ((int1%0x00000200>=0x00000100 and int2%0x00000200>=0x00000100 and 0x00000100) or 0)+
                ((int1%0x00000400>=0x00000200 and int2%0x00000400>=0x00000200 and 0x00000200) or 0)+
                ((int1%0x00000800>=0x00000400 and int2%0x00000800>=0x00000400 and 0x00000400) or 0)+
                ((int1%0x00001000>=0x00000800 and int2%0x00001000>=0x00000800 and 0x00000800) or 0)+
                ((int1%0x00002000>=0x00001000 and int2%0x00002000>=0x00001000 and 0x00001000) or 0)+
                ((int1%0x00004000>=0x00002000 and int2%0x00004000>=0x00002000 and 0x00002000) or 0)+
                ((int1%0x00008000>=0x00004000 and int2%0x00008000>=0x00004000 and 0x00004000) or 0)+
                ((int1%0x00010000>=0x00008000 and int2%0x00010000>=0x00008000 and 0x00008000) or 0)+
                ((int1%0x00020000>=0x00010000 and int2%0x00020000>=0x00010000 and 0x00010000) or 0)+
                ((int1%0x00040000>=0x00020000 and int2%0x00040000>=0x00020000 and 0x00020000) or 0)+
                ((int1%0x00080000>=0x00040000 and int2%0x00080000>=0x00040000 and 0x00040000) or 0)+
                ((int1%0x00100000>=0x00080000 and int2%0x00100000>=0x00080000 and 0x00080000) or 0)+
                ((int1%0x00200000>=0x00100000 and int2%0x00200000>=0x00100000 and 0x00100000) or 0)+
                ((int1%0x00400000>=0x00200000 and int2%0x00400000>=0x00200000 and 0x00200000) or 0)+
                ((int1%0x00800000>=0x00400000 and int2%0x00800000>=0x00400000 and 0x00400000) or 0)+
                ((int1%0x01000000>=0x00800000 and int2%0x01000000>=0x00800000 and 0x00800000) or 0)+
                ((int1%0x02000000>=0x01000000 and int2%0x02000000>=0x01000000 and 0x01000000) or 0)+
                ((int1%0x04000000>=0x02000000 and int2%0x04000000>=0x02000000 and 0x02000000) or 0)+
                ((int1%0x08000000>=0x04000000 and int2%0x08000000>=0x04000000 and 0x04000000) or 0)+
                ((int1%0x10000000>=0x08000000 and int2%0x10000000>=0x08000000 and 0x08000000) or 0)+
                ((int1%0x20000000>=0x10000000 and int2%0x20000000>=0x10000000 and 0x10000000) or 0)+
                ((int1%0x40000000>=0x20000000 and int2%0x40000000>=0x20000000 and 0x20000000) or 0)+
                ((int1%0x80000000>=0x40000000 and int2%0x80000000>=0x40000000 and 0x40000000) or 0)+
                ((int1>=0x80000000 and int2>=0x80000000 and 0x80000000) or 0)

                return (int3 and band(ret, int3, ...)) or ret
        end

        local function bxor(int1, int2, int3, ...)
                local ret =
                ((int1%0x00000002>=0x00000001 ~= (int2%0x00000002>=0x00000001) and 0x00000001) or 0)+
                ((int1%0x00000004>=0x00000002 ~= (int2%0x00000004>=0x00000002) and 0x00000002) or 0)+
                ((int1%0x00000008>=0x00000004 ~= (int2%0x00000008>=0x00000004) and 0x00000004) or 0)+
                ((int1%0x00000010>=0x00000008 ~= (int2%0x00000010>=0x00000008) and 0x00000008) or 0)+
                ((int1%0x00000020>=0x00000010 ~= (int2%0x00000020>=0x00000010) and 0x00000010) or 0)+
                ((int1%0x00000040>=0x00000020 ~= (int2%0x00000040>=0x00000020) and 0x00000020) or 0)+
                ((int1%0x00000080>=0x00000040 ~= (int2%0x00000080>=0x00000040) and 0x00000040) or 0)+
                ((int1%0x00000100>=0x00000080 ~= (int2%0x00000100>=0x00000080) and 0x00000080) or 0)+
                ((int1%0x00000200>=0x00000100 ~= (int2%0x00000200>=0x00000100) and 0x00000100) or 0)+
                ((int1%0x00000400>=0x00000200 ~= (int2%0x00000400>=0x00000200) and 0x00000200) or 0)+
                ((int1%0x00000800>=0x00000400 ~= (int2%0x00000800>=0x00000400) and 0x00000400) or 0)+
                ((int1%0x00001000>=0x00000800 ~= (int2%0x00001000>=0x00000800) and 0x00000800) or 0)+
                ((int1%0x00002000>=0x00001000 ~= (int2%0x00002000>=0x00001000) and 0x00001000) or 0)+
                ((int1%0x00004000>=0x00002000 ~= (int2%0x00004000>=0x00002000) and 0x00002000) or 0)+
                ((int1%0x00008000>=0x00004000 ~= (int2%0x00008000>=0x00004000) and 0x00004000) or 0)+
                ((int1%0x00010000>=0x00008000 ~= (int2%0x00010000>=0x00008000) and 0x00008000) or 0)+
                ((int1%0x00020000>=0x00010000 ~= (int2%0x00020000>=0x00010000) and 0x00010000) or 0)+
                ((int1%0x00040000>=0x00020000 ~= (int2%0x00040000>=0x00020000) and 0x00020000) or 0)+
                ((int1%0x00080000>=0x00040000 ~= (int2%0x00080000>=0x00040000) and 0x00040000) or 0)+
                ((int1%0x00100000>=0x00080000 ~= (int2%0x00100000>=0x00080000) and 0x00080000) or 0)+
                ((int1%0x00200000>=0x00100000 ~= (int2%0x00200000>=0x00100000) and 0x00100000) or 0)+
                ((int1%0x00400000>=0x00200000 ~= (int2%0x00400000>=0x00200000) and 0x00200000) or 0)+
                ((int1%0x00800000>=0x00400000 ~= (int2%0x00800000>=0x00400000) and 0x00400000) or 0)+
                ((int1%0x01000000>=0x00800000 ~= (int2%0x01000000>=0x00800000) and 0x00800000) or 0)+
                ((int1%0x02000000>=0x01000000 ~= (int2%0x02000000>=0x01000000) and 0x01000000) or 0)+
                ((int1%0x04000000>=0x02000000 ~= (int2%0x04000000>=0x02000000) and 0x02000000) or 0)+
                ((int1%0x08000000>=0x04000000 ~= (int2%0x08000000>=0x04000000) and 0x04000000) or 0)+
                ((int1%0x10000000>=0x08000000 ~= (int2%0x10000000>=0x08000000) and 0x08000000) or 0)+
                ((int1%0x20000000>=0x10000000 ~= (int2%0x20000000>=0x10000000) and 0x10000000) or 0)+
                ((int1%0x40000000>=0x20000000 ~= (int2%0x40000000>=0x20000000) and 0x20000000) or 0)+
                ((int1%0x80000000>=0x40000000 ~= (int2%0x80000000>=0x40000000) and 0x40000000) or 0)+
                ((int1>=0x80000000 ~= (int2>=0x80000000) and 0x80000000) or 0)

                return (int3 and bxor(ret, int3, ...)) or ret
        end

        local function bnot(int)
                return 4294967295 - int
        end

        local function rshift(int, by)
                int = int % 2^32
                local shifted = int / (2 ^ by)
                return shifted - shifted % 1
        end

        local function rrotate(int, by)
                int = int % 2^32
                local shifted = int / (2 ^ by)
                local fraction = shifted % 1
                return (shifted - fraction) + fraction * (2 ^ 32)
        end

        local k = {
                0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
                0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
                0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
                0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
                0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
                0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
                0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
                0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
                0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
                0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
                0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
                0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
                0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
                0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
                0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
                0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2,
        }


        local function str2hexa(s)
                local h = string.gsub(s, ".", function(c)
                        return string.format("%02x", string.byte(c))
                end)
                return h
        end

        local function num2s(l, n)
                local s = ""
                for i = 1, n do
                        local rem = l % 256
                        s = string.char(rem) .. s
                        l = (l - rem) / 256
                end
                return s
        end

        local function s232num(s, i)
                local n = 0
                for i = i, i + 3 do n = n*256 + string.byte(s, i) end
                return n
        end

        local function preproc(msg, len)
                local extra = 64 - ((len + 1 + 8) % 64)
                len = num2s(8 * len, 8)
                msg = msg .. "\128" .. string.rep("\0", extra) .. len
                return msg
        end

        local function initH256(H)
                H[1] = 0x6a09e667
                H[2] = 0xbb67ae85
                H[3] = 0x3c6ef372
                H[4] = 0xa54ff53a
                H[5] = 0x510e527f
                H[6] = 0x9b05688c
                H[7] = 0x1f83d9ab
                H[8] = 0x5be0cd19
                return H
        end

        local function digestblock(msg, i, H)
                local w = {}
                for j = 1, 16 do w[j] = s232num(msg, i + (j - 1) * 4) end
                for j = 17, 64 do
                        local v = w[j - 15]
                        local s0 = bxor(rrotate(v, 7), rrotate(v, 18), rshift(v, 3))
                        v = w[j - 2]
                        local s1 = bxor(rrotate(v, 17), rrotate(v, 19), rshift(v, 10))
                        w[j] = w[j - 16] + s0 + w[j - 7] + s1
                end

                local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
                for i = 1, 64 do
                        local s0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
                        local maj = bxor(band(a, b), band(a, c), band(b, c))
                        local t2 = s0 + maj
                        local s1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
                        local ch = bxor (band(e, f), band(bnot(e), g))
                        local t1 = h + s1 + ch + k[i] + w[i]
                        h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
                end

                H[1] = (H[1] + a) % 2^32
                H[2] = (H[2] + b) % 2^32
                H[3] = (H[3] + c) % 2^32
                H[4] = (H[4] + d) % 2^32
                H[5] = (H[5] + e) % 2^32
                H[6] = (H[6] + f) % 2^32
                H[7] = (H[7] + g) % 2^32
                H[8] = (H[8] + h) % 2^32
        end

        msg = preproc(msg, #msg)
        local H = initH256({})
        for i = 1, #msg, 64 do digestblock(msg, i, H) end
        return str2hexa(num2s(H[1], 4) .. num2s(H[2], 4) .. num2s(H[3], 4) .. num2s(H[4], 4) ..
                num2s(H[5], 4) .. num2s(H[6], 4) .. num2s(H[7], 4) .. num2s(H[8], 4))
end

------------------------------------
