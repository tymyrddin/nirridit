FasdUAS 1.101.10   ??   ??    k             l     ????????  ??  ??        l     ?? 	 
??   	 * $  CocoaAppletAppDelegate.applescript    
 ?   H     C o c o a A p p l e t A p p D e l e g a t e . a p p l e s c r i p t      l     ??  ??        Cocoa-AppleScript Applet     ?   4     C o c o a - A p p l e S c r i p t   A p p l e t      l     ????????  ??  ??        l     ??  ??    ; 5  Copyright 2011 {Your Company}. All rights reserved.     ?   j     C o p y r i g h t   2 0 1 1   { Y o u r   C o m p a n y } .   A l l   r i g h t s   r e s e r v e d .      l     ????????  ??  ??        l     ????????  ??  ??        l     ??  ??    _ Y This application delegate emulates the OSA script applet by loading "main.scpt" from the     ?     ?   T h i s   a p p l i c a t i o n   d e l e g a t e   e m u l a t e s   t h e   O S A   s c r i p t   a p p l e t   b y   l o a d i n g   " m a i n . s c p t "   f r o m   t h e   ! " ! l     ?? # $??   # f ` "Scripts" folder in the application resources and invoking the traditional run/open/reopen/quit    $ ? % % ?   " S c r i p t s "   f o l d e r   i n   t h e   a p p l i c a t i o n   r e s o u r c e s   a n d   i n v o k i n g   t h e   t r a d i t i o n a l   r u n / o p e n / r e o p e n / q u i t "  & ' & l     ?? ( )??   ( O I handlers in response to Cocoa application delegate methods being called.    ) ? * * ?   h a n d l e r s   i n   r e s p o n s e   t o   C o c o a   a p p l i c a t i o n   d e l e g a t e   m e t h o d s   b e i n g   c a l l e d . '  + , + l     ????????  ??  ??   ,  - . - l     ?? / 0??   / _ Y This is provided in source form so that you may customize or replace it if your needs go    0 ? 1 1 ?   T h i s   i s   p r o v i d e d   i n   s o u r c e   f o r m   s o   t h a t   y o u   m a y   c u s t o m i z e   o r   r e p l a c e   i t   i f   y o u r   n e e d s   g o .  2 3 2 l     ?? 4 5??   4 ( " beyond the basic applet handlers.    5 ? 6 6 D   b e y o n d   t h e   b a s i c   a p p l e t   h a n d l e r s . 3  7 8 7 l     ????????  ??  ??   8  9 : 9 l     ?? ; <??   ; [ U Some of these methods must guard against re-entrancy, because invoking the main.scpt    < ? = = ?   S o m e   o f   t h e s e   m e t h o d s   m u s t   g u a r d   a g a i n s t   r e - e n t r a n c y ,   b e c a u s e   i n v o k i n g   t h e   m a i n . s c p t :  > ? > l     ?? @ A??   @ \ V handler may end up invoking the event handler inherited from the current application,    A ? B B ?   h a n d l e r   m a y   e n d   u p   i n v o k i n g   t h e   e v e n t   h a n d l e r   i n h e r i t e d   f r o m   t h e   c u r r e n t   a p p l i c a t i o n , ?  C D C l     ?? E F??   E ; 5 which calls the application delegate's method again.    F ? G G j   w h i c h   c a l l s   t h e   a p p l i c a t i o n   d e l e g a t e ' s   m e t h o d   a g a i n . D  H I H l     ????????  ??  ??   I  J K J h     ?? L?? 00 cocoaappletappdelegate CocoaAppletAppDelegate L k       M M  N O N j     ?? P
?? 
pare P 4     ?? Q
?? 
pcls Q m     R R ? S S  N S O b j e c t O  T U T l      V W X V j   	 ?? Y?? 0 
mainscript 
mainScript Y m   	 
??
?? 
msng W   the applet's main.scpt    X ? Z Z .   t h e   a p p l e t ' s   m a i n . s c p t U  [ \ [ l      ] ^ _ ] j    ?? `?? 0 didopenfiles didOpenFiles ` m    ??
?? boovfals ^ = 7 true = the application opened documents during startup    _ ? a a n   t r u e   =   t h e   a p p l i c a t i o n   o p e n e d   d o c u m e n t s   d u r i n g   s t a r t u p \  b c b l      d e f d j    ?? g??  0 isopeningfiles isOpeningFiles g m    ??
?? boovfals e @ : re-entrancy guard: true = in the process of opening files    f ? h h t   r e - e n t r a n c y   g u a r d :   t r u e   =   i n   t h e   p r o c e s s   o f   o p e n i n g   f i l e s c  i j i l      k l m k j    ?? n?? 0 isreopening isReopening n m    ??
?? boovfals l = 7 re-entrancy guard: true = in the process of re-opening    m ? o o n   r e - e n t r a n c y   g u a r d :   t r u e   =   i n   t h e   p r o c e s s   o f   r e - o p e n i n g j  p q p l      r s t r j    ?? u?? 0 
isquitting 
isQuitting u m    ??
?? boovfals s ; 5 re-entrancy guard: true = in the process of quitting    t ? v v j   r e - e n t r a n c y   g u a r d :   t r u e   =   i n   t h e   p r o c e s s   o f   q u i t t i n g q  w x w l     ????????  ??  ??   x  y z y i     { | { I      ?? }???? B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_ }  ~?? ~ o      ???? 0 anotification aNotification??  ??   | k     )    ? ? ? l     ?? ? ???   ? S M Insert code here to initialize your application before any files are opened     ? ? ? ? ?   I n s e r t   c o d e   h e r e   t o   i n i t i a l i z e   y o u r   a p p l i c a t i o n   b e f o r e   a n y   f i l e s   a r e   o p e n e d   ?  ? ? ? l     ????????  ??  ??   ?  ? ? ? l     ?? ? ???   ? T N Emulate an OSA Applet: Load the main script from the Scripts resource folder.    ? ? ? ? ?   E m u l a t e   a n   O S A   A p p l e t :   L o a d   t h e   m a i n   s c r i p t   f r o m   t h e   S c r i p t s   r e s o u r c e   f o l d e r . ?  ??? ? Q     ) ? ? ? ? r     ? ? ? I   ?? ???
?? .sysoloadscpt        file ? l   
 ????? ? I   
?? ? ?
?? .sysorpthalis        TEXT ? m     ? ? ? ? ?  m a i n . s c p t ? ?? ???
?? 
in D ? m     ? ? ? ? ?  S c r i p t s??  ??  ??  ??   ? n      ? ? ? o    ???? 0 
mainscript 
mainScript ?  f     ? R      ?? ? ?
?? .ascrerr ****      ? **** ? o      ???? 0 errmsg errMsg ? ?? ???
?? 
errn ? o      ???? 0 errnum errNum??   ? k    ) ? ?  ? ? ? l   ?? ? ???   ? ^ X Perhaps this should silently fail if it can't load the script; that way, a Cocoa applet    ? ? ? ? ?   P e r h a p s   t h i s   s h o u l d   s i l e n t l y   f a i l   i f   i t   c a n ' t   l o a d   t h e   s c r i p t ;   t h a t   w a y ,   a   C o c o a   a p p l e t ?  ? ? ? l   ?? ? ???   ? 4 . can just have Cocoa classes and no main.scpt.    ? ? ? ? \   c a n   j u s t   h a v e   C o c o a   c l a s s e s   a n d   n o   m a i n . s c p t . ?  ??? ? I   )?? ? ?
?? .sysodisAaleR        TEXT ? m     ? ? ? ? ? 0 C o u l d   n o t   l o a d   m a i n . s c p t ? ?? ? ?
?? 
mesS ? b    # ? ? ? b    ! ? ? ? b     ? ? ? o    ???? 0 errmsg errMsg ? m     ? ? ? ? ?    ( ? o     ???? 0 errnum errNum ? m   ! " ? ? ? ? ?  ) ? ?? ???
?? 
as A ? m   $ %??
?? EAlTcriT??  ??  ??   z  ? ? ? l     ????????  ??  ??   ?  ? ? ? i     ? ? ? I      ?? ????? @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_ ?  ??? ? o      ???? 0 anotification aNotification??  ??   ? k     T ? ?  ? ? ? l     ?? ? ???   ? T N Insert code here to do startup actions after your application has initialized    ? ? ? ? ?   I n s e r t   c o d e   h e r e   t o   d o   s t a r t u p   a c t i o n s   a f t e r   y o u r   a p p l i c a t i o n   h a s   i n i t i a l i z e d ?  ? ? ? l     ????????  ??  ??   ?  ? ? ? Z     ? ????? ? =     ? ? ? o     ???? 0 
mainscript 
mainScript ? m    ??
?? 
msng ? L   
 ????  ??  ??   ?  ? ? ? l   ????????  ??  ??   ?  ? ? ? l   ?? ? ???   ? 7 1 Emulate an OSA Applet: Invoke the "run" handler.    ? ? ? ? b   E m u l a t e   a n   O S A   A p p l e t :   I n v o k e   t h e   " r u n "   h a n d l e r . ?  ? ? ? l   ????????  ??  ??   ?  ? ? ? l   ?? ? ???   ? T N If we have already opened files during startup, don't invoke the run handler.    ? ? ? ? ?   I f   w e   h a v e   a l r e a d y   o p e n e d   f i l e s   d u r i n g   s t a r t u p ,   d o n ' t   i n v o k e   t h e   r u n   h a n d l e r . ?  ? ? ? Z    ? ????? ? o    ???? 0 didopenfiles didOpenFiles ? L    ????  ??  ??   ?  ? ? ? l     ????????  ??  ??   ?  ? ? ? Q     R ? ? ? ? O  # 1 ? ? ? I  + 0??????
?? .aevtoappnull  ?   ? ****??  ??   ? o   # (???? 0 
mainscript 
mainScript ? R      ?? ? ?
?? .ascrerr ****      ? **** ? o      ???? 0 errmsg errMsg ? ?? ???
?? 
errn ? o      ???? 0 errnum errNum??   ? Z   9 R ? ????? ? >  9 < ? ? ? o   9 :???? 0 errnum errNum ? m   : ;?????? ? I  ? N?? ? ?
?? .sysodisAaleR        TEXT ? m   ? @ ? ? ? ? ? > A n   e r r o r   o c c u r r e d   w h i l e   r u n n i n g ? ?? ? ?
?? 
mesS ? b   A H ? ? ? b   A F ? ? ? b   A D ?  ? o   A B?? 0 errmsg errMsg  m   B C ?    ( ? o   D E?~?~ 0 errnum errNum ? m   F G ?  ) ? ?}?|
?} 
as A m   I J?{
?{ EAlTcriT?|  ??  ??   ?  l  S S?z?y?x?z  ?y  ?x   	 l  S S?w
?w  
 V P TODO: Read the applet's "stay open" flag and quit if it's false or unspecified.    ? ?   T O D O :   R e a d   t h e   a p p l e t ' s   " s t a y   o p e n "   f l a g   a n d   q u i t   i f   i t ' s   f a l s e   o r   u n s p e c i f i e d .	  l  S S?v?v   [ U For now, all Cocoa Applets stay open and require the run handler to explicitly quit,    ? ?   F o r   n o w ,   a l l   C o c o a   A p p l e t s   s t a y   o p e n   a n d   r e q u i r e   t h e   r u n   h a n d l e r   t o   e x p l i c i t l y   q u i t ,  l  S S?u?u   F @ which is arguably more correct for a Cocoa application, anyway.    ? ?   w h i c h   i s   a r g u a b l y   m o r e   c o r r e c t   f o r   a   C o c o a   a p p l i c a t i o n ,   a n y w a y . ?t l   S S?s?s   3 - if not shouldStayOpen then
			quit
		end if     ? Z   i f   n o t   s h o u l d S t a y O p e n   t h e n 
 	 	 	 q u i t 
 	 	 e n d   i f  ?t   ?  l     ?r?q?p?r  ?q  ?p    i     #  I      ?o!?n?o d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_! "#" o      ?m?m 
0 sender  # $?l$ o      ?k?k 0 flag  ?l  ?n    k     n%% &'& l     ?j()?j  ( J D Insert code here to perform actions in response to a "reopen" event   ) ?** ?   I n s e r t   c o d e   h e r e   t o   p e r f o r m   a c t i o n s   i n   r e s p o n s e   t o   a   " r e o p e n "   e v e n t' +,+ l     ?i?h?g?i  ?h  ?g  , -.- Z    /0?f?e/ =    121 o     ?d?d 0 
mainscript 
mainScript2 m    ?c
?c 
msng0 L   
 33 m   
 ?b
?b boovtrue?f  ?e  . 454 l   ?a?`?_?a  ?`  ?_  5 676 l   ?^89?^  8 !  Guard against re-entrancy.   9 ?:: 6   G u a r d   a g a i n s t   r e - e n t r a n c y .7 ;<; Z    k=>?]?\= H    ?? o    ?[?[ 0 isreopening isReopening> k    g@@ ABA r    !CDC m    ?Z
?Z boovtrueD o      ?Y?Y 0 isreopening isReopeningB EFE l  " "?X?W?V?X  ?W  ?V  F GHG l  " "?UIJ?U  I i c Emulate an OSA Applet: Invoke the "reopen" handler. If there isn't one, let the application object   J ?KK ?   E m u l a t e   a n   O S A   A p p l e t :   I n v o k e   t h e   " r e o p e n "   h a n d l e r .   I f   t h e r e   i s n ' t   o n e ,   l e t   t h e   a p p l i c a t i o n   o b j e c tH LML l  " "?TNO?T  N j d handle reopen (this is different from an OSA applet, which would do nothing if there is no handler;   O ?PP ?   h a n d l e   r e o p e n   ( t h i s   i s   d i f f e r e n t   f r o m   a n   O S A   a p p l e t ,   w h i c h   w o u l d   d o   n o t h i n g   i f   t h e r e   i s   n o   h a n d l e r ;M QRQ l  " "?SST?S  S h b this way, the application will perform the usual "create untitled document" behavior by default).   T ?UU ?   t h i s   w a y ,   t h e   a p p l i c a t i o n   w i l l   p e r f o r m   t h e   u s u a l   " c r e a t e   u n t i t l e d   d o c u m e n t "   b e h a v i o r   b y   d e f a u l t ) .R VWV Q   " _XYZX k   % >[[ \]\ O  % 3^_^ I  - 2?R?Q?P
?R .aevtrappnull??? ??? null?Q  ?P  _ o   % *?O?O 0 
mainscript 
mainScript] `a` r   4 ;bcb m   4 5?N
?N boovfalsc o      ?M?M 0 isreopening isReopeninga ded l  < <?L?K?J?L  ?K  ?J  e f?If L   < >gg m   < =?H
?H boovfals?I  Y R      ?Ghi
?G .ascrerr ****      ? ****h o      ?F?F 0 errmsg errMsgi ?Ej?D
?E 
errnj o      ?C?C 0 errnum errNum?D  Z Z   F _kl?B?Ak >  F Imnm o   F G?@?@ 0 errnum errNumn m   G H??????l I  L [?>op
?> .sysodisAaleR        TEXTo m   L Mqq ?rr B A n   e r r o r   o c c u r r e d   w h i l e   r e o p e n i n gp ?=st
?= 
mesSs b   N Uuvu b   N Swxw b   N Qyzy o   N O?<?< 0 errmsg errMsgz m   O P{{ ?||    (x o   Q R?;?; 0 errnum errNumv m   S T}} ?~~  )t ?:?9
?: 
as A m   V W?8
?8 EAlTcriT?9  ?B  ?A  W ??? l  ` `?7?6?5?7  ?6  ?5  ? ??4? r   ` g??? m   ` a?3
?3 boovfals? o      ?2?2 0 isreopening isReopening?4  ?]  ?\  < ??? l  l l?1?0?/?1  ?0  ?/  ? ??.? L   l n?? m   l m?-
?- boovtrue?.   ??? l     ?,?+?*?,  ?+  ?*  ? ??? i   $ '??? I      ?)??(?) 00 application_openfiles_ application_openFiles_? ??? o      ?'?' 
0 sender  ? ??&? o      ?%?% 0 	filenames  ?&  ?(  ? k     ??? ??? l     ?$???$  ? S M Insert code here to perform actions in response to an "open documents" event   ? ??? ?   I n s e r t   c o d e   h e r e   t o   p e r f o r m   a c t i o n s   i n   r e s p o n s e   t o   a n   " o p e n   d o c u m e n t s "   e v e n t? ??? l     ?#?"?!?#  ?"  ?!  ? ??? l     ? ???   ? P J Remember that we opened files, to avoid invoking the "run" handler later.   ? ??? ?   R e m e m b e r   t h a t   w e   o p e n e d   f i l e s ,   t o   a v o i d   i n v o k i n g   t h e   " r u n "   h a n d l e r   l a t e r .? ??? r     ??? m     ?
? boovtrue? o      ?? 0 didopenfiles didOpenFiles? ??? l   ????  ?  ?  ? ??? l   ????  ? !  Guard against re-entrancy.   ? ??? 6   G u a r d   a g a i n s t   r e - e n t r a n c y .? ??? Z    ?????? F    ??? H    ?? o    ??  0 isopeningfiles isOpeningFiles? >   ??? o    ?? 0 
mainscript 
mainScript? m    ?
? 
msng? k    ??? ??? r    $??? m    ?
? boovtrue? o      ??  0 isopeningfiles isOpeningFiles? ??? l  % %????  ?  ?  ? ??? Q   % ????? k   ( n?? ??? l  ( (????  ? A ; Convert all the filenames from NSStrings to script strings   ? ??? v   C o n v e r t   a l l   t h e   f i l e n a m e s   f r o m   N S S t r i n g s   t o   s c r i p t   s t r i n g s? ??? r   ( ,??? J   ( *??  ? o      ?? (0 thefilenamestrings theFilenameStrings? ??? X   - I???? r   = D??? b   = B??? o   = >?? (0 thefilenamestrings theFilenameStrings? l  > A??
?	? c   > A??? o   > ??? 0 eachfile eachFile? m   ? @?
? 
ctxt?
  ?	  ? o      ?? (0 thefilenamestrings theFilenameStrings? 0 eachfile eachFile? o   0 1?? 0 	filenames  ? ??? l  J J????  ?  ?  ? ??? O  J X??? I  R W??? 
? .aevtodocnull  ?    alis? o   R S???? (0 thefilenamestrings theFilenameStrings?   ? o   J O???? 0 
mainscript 
mainScript? ??? r   Y `??? m   Y Z??
?? boovfals? o      ????  0 isopeningfiles isOpeningFiles? ??? l  a a????????  ??  ??  ? ???? O  a n??? I   e m??????? *0 replytoopenorprint_ replyToOpenOrPrint_? ???? n  f i??? o   g i???? F0 !nsapplicationdelegatereplysuccess !NSApplicationDelegateReplySuccess? m   f g??
?? misccura??  ??  ? o   a b???? 
0 sender  ??  ? R      ????
?? .ascrerr ****      ? ****? o      ???? 0 errmsg errMsg? ?????
?? 
errn? o      ???? 0 errnum errNum??  ? Z   v ??????? =   v y??? o   v w???? 0 errnum errNum? m   w x??????? O  | ???? I   ? ???????? *0 replytoopenorprint_ replyToOpenOrPrint_? ???? n  ? ???? o   ? ????? D0  nsapplicationdelegatereplycancel  NSApplicationDelegateReplyCancel? m   ? ???
?? misccura??  ??  ? o   | }???? 
0 sender  ??  ? k   ? ??? ??? I  ? ?????
?? .sysodisAaleR        TEXT? m   ? ??? ??? N A n   e r r o r   o c c u r r e d   w h i l e   o p e n i n g   f i l e ( s )? ????
?? 
mesS? b   ? ?   b   ? ? b   ? ? o   ? ????? 0 errmsg errMsg m   ? ? ?    ( o   ? ????? 0 errnum errNum m   ? ? ?		  )? ??
??
?? 
as A
 m   ? ???
?? EAlTcriT??  ? ?? O  ? ? I   ? ??????? *0 replytoopenorprint_ replyToOpenOrPrint_ ?? n  ? ? o   ? ????? F0 !nsapplicationdelegatereplyfailure !NSApplicationDelegateReplyFailure m   ? ???
?? misccura??  ??   o   ? ????? 
0 sender  ??  ?  l  ? ?????????  ??  ??   ?? r   ? ? m   ? ???
?? boovfals o      ????  0 isopeningfiles isOpeningFiles??  ?  ? O  ? ? I   ? ??????? *0 replytoopenorprint_ replyToOpenOrPrint_ ?? n  ? ? o   ? ????? F0 !nsapplicationdelegatereplyfailure !NSApplicationDelegateReplyFailure m   ? ???
?? misccura??  ??   o   ? ????? 
0 sender  ?  ?  l     ????????  ??  ??     i   ( +!"! I      ??#???? :0 applicationshouldterminate_ applicationShouldTerminate_# $??$ o      ???? 
0 sender  ??  ??  " k     y%% &'& l     ??()??  ( M G Insert code here to do any housekeeping before your application quits    ) ?** ?   I n s e r t   c o d e   h e r e   t o   d o   a n y   h o u s e k e e p i n g   b e f o r e   y o u r   a p p l i c a t i o n   q u i t s  ' +,+ l     ????????  ??  ??  , -.- l     ??/0??  / !  Guard against re-entrancy.   0 ?11 6   G u a r d   a g a i n s t   r e - e n t r a n c y .. 232 Z     q45????4 F     676 H     88 o     ???? 0 
isquitting 
isQuitting7 >  	 9:9 o   	 ???? 0 
mainscript 
mainScript: m    ??
?? 
msng5 k    m;; <=< r    >?> m    ??
?? boovtrue? o      ???? 0 
isquitting 
isQuitting= @A@ l   ????????  ??  ??  A BCB l   ??DE??  D ] W Emulate an OSA Applet: Invoke the "quit" handler; if the handler returns, it has fully   E ?FF ?   E m u l a t e   a n   O S A   A p p l e t :   I n v o k e   t h e   " q u i t "   h a n d l e r ;   i f   t h e   h a n d l e r   r e t u r n s ,   i t   h a s   f u l l yC GHG l   ??IJ??  I \ V handled the quit message and we should not quit, otherwise, it calls "continue quit",   J ?KK ?   h a n d l e d   t h e   q u i t   m e s s a g e   a n d   w e   s h o u l d   n o t   q u i t ,   o t h e r w i s e ,   i t   c a l l s   " c o n t i n u e   q u i t " ,H LML l   ??NO??  N "  which returns error -10000.   O ?PP 8   w h i c h   r e t u r n s   e r r o r   - 1 0 0 0 0 .M QRQ Q    eSTUS k     <VV WXW O    .YZY I  ( -??????
?? .aevtquitnull??? ??? null??  ??  Z o     %???? 0 
mainscript 
mainScriptX [\[ r   / 6]^] m   / 0??
?? boovfals^ o      ???? 0 
isquitting 
isQuitting\ _`_ l  7 7????????  ??  ??  ` a??a L   7 <bb n  7 ;cdc o   8 :???? &0 nsterminatecancel NSTerminateCanceld m   7 8??
?? misccura??  T R      ??ef
?? .ascrerr ****      ? ****e o      ???? 0 errmsg errMsgf ??g??
?? 
errng o      ???? 0 errnum errNum??  U k   D ehh iji l  D D??kl??  k * $ -128 means there is no quit handler   l ?mm H   - 1 2 8   m e a n s   t h e r e   i s   n o   q u i t   h a n d l e rj non l  D D??pq??  p 3 - -10000 means the handler did "continue quit"   q ?rr Z   - 1 0 0 0 0   m e a n s   t h e   h a n d l e r   d i d   " c o n t i n u e   q u i t "o s??s Z   D etu????t F   D Ovwv >  D Gxyx o   D E???? 0 errnum errNumy m   E F??????w >  J Mz{z o   J K???? 0 errnum errNum{ m   K L??????u I  R a??|}
?? .sysodisAaleR        TEXT| m   R S~~ ? @ A n   e r r o r   o c c u r r e d   w h i l e   q u i t t i n g} ????
?? 
mesS? b   T [??? b   T Y??? b   T W??? o   T U???? 0 errmsg errMsg? m   U V?? ???    (? o   W X???? 0 errnum errNum? m   Y Z?? ???  )? ?????
?? 
as A? m   \ ]??
?? EAlTcriT??  ??  ??  ??  R ??? l  f f????????  ??  ??  ? ???? r   f m??? m   f g??
?? boovfals? o      ???? 0 
isquitting 
isQuitting??  ??  ??  3 ??? l  r r????????  ??  ??  ? ???? L   r y?? n  r x??? o   s w????  0 nsterminatenow NSTerminateNow? m   r s??
?? misccura??    ???? l     ????????  ??  ??  ??   K ??? l     ?~?}?|?~  ?}  ?|  ?       ?{???{  ? ?z?z 00 cocoaappletappdelegate CocoaAppletAppDelegate? ?y L???y 00 cocoaappletappdelegate CocoaAppletAppDelegate? ?? ?x?w?
?x misccura
?w 
pcls? ???  N S O b j e c t? ?v??u?t?s?r?q?p??????v  ? ?o?n?m?l?k?j?i?h?g?f?e
?o 
pare?n 0 
mainscript 
mainScript?m 0 didopenfiles didOpenFiles?l  0 isopeningfiles isOpeningFiles?k 0 isreopening isReopening?j 0 
isquitting 
isQuitting?i B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_?h @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_?g d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_?f 00 application_openfiles_ application_openFiles_?e :0 applicationshouldterminate_ applicationShouldTerminate_?u  
?t 
msng
?s boovfals
?r boovfals
?q boovfals
?p boovfals? ?d |?c?b???a?d B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_?c ?`??` ?  ?_?_ 0 anotification aNotification?b  ? ?^?]?\?^ 0 anotification aNotification?] 0 errmsg errMsg?\ 0 errnum errNum?  ??[ ??Z?Y?X?W? ??V ? ??U?T?S?R
?[ 
in D
?Z .sysorpthalis        TEXT
?Y .sysoloadscpt        file?X 0 
mainscript 
mainScript?W 0 errmsg errMsg? ?Q?P?O
?Q 
errn?P 0 errnum errNum?O  
?V 
mesS
?U 
as A
?T EAlTcriT?S 
?R .sysodisAaleR        TEXT?a * ???l j )?,FW X  ????%?%?%??? ? ?N ??M?L???K?N @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_?M ?J??J ?  ?I?I 0 anotification aNotification?L  ? ?H?G?F?H 0 anotification aNotification?G 0 errmsg errMsg?F 0 errnum errNum? ?E?D?C??B ??A?@???>?=
?E 
msng
?D .aevtoappnull  ?   ? ****?C 0 errmsg errMsg? ?<?;?:
?< 
errn?; 0 errnum errNum?:  ?B??
?A 
mesS
?@ 
as A
?? EAlTcriT?> 
?= .sysodisAaleR        TEXT?K Ub  ?  hY hOb   hY hO b   *j UW  X  ?? ????%?%?%??? Y hOP? ?9 ?8?7???6?9 d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_?8 ?5??5 ?  ?4?3?4 
0 sender  ?3 0 flag  ?7  ? ?2?1?0?/?2 
0 sender  ?1 0 flag  ?0 0 errmsg errMsg?/ 0 errnum errNum? ?.?-?,??+q?*{}?)?(?'?&
?. 
msng
?- .aevtrappnull??? ??? null?, 0 errmsg errMsg? ?%?$?#
?% 
errn?$ 0 errnum errNum?#  ?+??
?* 
mesS
?) 
as A
?( EAlTcriT?' 
?& .sysodisAaleR        TEXT?6 ob  ?  eY hOb   ReEc  O b   *j UOfEc  OfW  X  ?? ????%?%?%??? Y hOfEc  Y hOe? ?"??!? ????" 00 application_openfiles_ application_openFiles_?! ??? ?  ??? 
0 sender  ? 0 	filenames  ?   ? ??????? 
0 sender  ? 0 	filenames  ? (0 thefilenamestrings theFilenameStrings? 0 eachfile eachFile? 0 errmsg errMsg? 0 errnum errNum? ?????????????
?	???????
? 
msng
? 
bool
? 
kocl
? 
cobj
? .corecnte****       ****
? 
ctxt
? .aevtodocnull  ?    alis
? misccura? F0 !nsapplicationdelegatereplysuccess !NSApplicationDelegateReplySuccess? *0 replytoopenorprint_ replyToOpenOrPrint_? 0 errmsg errMsg? ??? 
? 
errn? 0 errnum errNum?   ?
???	 D0  nsapplicationdelegatereplycancel  NSApplicationDelegateReplyCancel
? 
mesS
? 
as A
? EAlTcriT? 
? .sysodisAaleR        TEXT? F0 !nsapplicationdelegatereplyfailure !NSApplicationDelegateReplyFailure? ?eEc  Ob  	 b  ??& ?eEc  O KjvE?O ?[??l kh ???&%E?[OY??Ob   ?j UOfEc  O? 
*??,k+ 	UW FX 
 ??  ? 
*??,k+ 	UY +???a %?%a %a a a  O? *?a ,k+ 	UOfEc  Y ? *?a ,k+ 	U? ??"?????????? :0 applicationshouldterminate_ applicationShouldTerminate_?? ????? ?  ???? 
0 sender  ??  ? ???????? 
0 sender  ?? 0 errmsg errMsg?? 0 errnum errNum? ?????????????????~??????????????
?? 
msng
?? 
bool
?? .aevtquitnull??? ??? null
?? misccura?? &0 nsterminatecancel NSTerminateCancel?? 0 errmsg errMsg? ??????
?? 
errn?? 0 errnum errNum??  ????????
?? 
mesS
?? 
as A
?? EAlTcriT?? 
?? .sysodisAaleR        TEXT??  0 nsterminatenow NSTerminateNow?? zb  	 b  ??& ]eEc  O !b   *j UOfEc  O??,EW (X  ??	 ???& ????%?%?%??? Y hOfEc  Y hO?a ,Eascr  ??ޭ