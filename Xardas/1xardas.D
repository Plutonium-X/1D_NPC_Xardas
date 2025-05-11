BEGIN 1xardas
IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY @0


IF ~~ THEN REPLY @1 GOTO Greet
IF ~~ THEN REPLY @2 GOTO GoAway
END



IF ~~ THEN BEGIN Greet
SAY @3

IF ~~ THEN REPLY @4 DO ~SetGlobal("1xardasJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @5 GOTO GoAway
END


IF ~~ THEN BEGIN GoAway
SAY @6
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY @7
IF ~~ THEN REPLY @8 DO ~SetGlobal("1xardasJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @9 GOTO RefusedAgain
END

IF ~~ THEN BEGIN RefusedAgain
SAY @10
IF ~~ THEN EXIT
END


BEGIN 1xardasP
IF ~Global("1xardasJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @13 DO ~SetGlobal("1xardasJoined","LOCALS",0)~ EXIT
END

IF ~Global("1xardasJoined","LOCALS",0)~ THEN BEGIN Rejoin
SAY @14
IF ~~ THEN REPLY @15 DO ~SetGlobal("1xardasJoined","LOCALS",1)
JoinParty()~ EXIT
IF ~~ THEN REPLY @16 EXIT
END

