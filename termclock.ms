program TermClock;

uses Console;
uses Time;
uses Thread;
uses MemoryContext;

function Main(args: String*, argCount: Int32): Int32; begin
	var mc := MemoryContext::Create();
	while true do begin
		Console::Clear();
		var time := Time::GetCurrentTime();

		Console::Print(mc own time.ProduceLongDateString());
		Console::Print(' ');
		Console::PrintLn(mc own time.ProduceShortTimeString('hh:mm:ss xm'));

		mc.Clear();
		Thread::Sleep(1000 - time.GetMillisecond());
	end;

	return 0;
end;