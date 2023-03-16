(****************************************************************************
                            _   _  _
                           | | (_)| |
        ____  _____  _   _ | |  _ | |__
       / ___)(____ || | | || | | ||  _ \
      | |    / ___ || |_| || | | || |_) )
      |_|    \_____| \__  | \_)|_||____/
                    (____/

          raylib� for Pascal (Win64)

      a simple and easy-to-use library to
      enjoy videogames programming.

Copyright � 2022-present tinyBigGAMES� LLC
All Rights Reserved.

Website: https://tinybiggames.com
Email  : mailto:support@tinybiggames.com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software in
   a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

2. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

3. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

4. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived
   from this software without specific prior written permission.

5. All video, audio, graphics and other content accessed through the
   software in this distro is the property of the applicable content owner
   and may be protected by applicable copyright law. This License gives
   Customer no rights to such content, and Company disclaims any liability
   for misuse of content.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*****************************************************************************)

unit ucommon;

interface

uses
  sysutils,
  raylib;

const
  screen_width  = 800;
  screen_height = 450;
  screen_title  = 'raylib [%s] example - %s';


function GetRectangle(const x, y, w, h: single): Rectangle;
function GetVector2(const x, y: single): Vector2;
function GetTitle(const aModual, aTitle: string): PAnsiChar;

implementation

function GetRectangle(const x, y, w, h: single): Rectangle;
begin
  Result.x := x;
  Result.y := y;
  Result.width := w;
  Result.height := h;
end;

function GetVector2(const x, y: single): Vector2;
begin
  Result.x := x;
  Result.y := y;
end;

function GetTitle(const aModual, aTitle: string): PAnsiChar;
begin
  Result := PAnsiChar(AnsiString(Format(screen_title, [aModual, aTitle])));
end;

end.
