X-GM-THRID: 10397500309504
Date: Mon, 30 Mar 2015 22:10:37 -0700 (PDT)
From: Charlie WONG Super <1213charlie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: 1213charlie@gmail.com
Message-Id: <d93f6d8f-4e03-4ce9-b379-7a4be772fe16@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1503301741020.2457@hadrien>
References: <20150330154011.GA11201@ThinkPad>
 <alpine.DEB.2.10.1503301741020.2457@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: addi_apci_1564:
 Delete whitespace
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2080_698401080.1427778637311"
X-Google-Token: EM3Y6KgFFPihs9zIWiU0
X-Google-IP: 2001:250:4402:228:90e9:2717:61c3:1105

------=_Part_2080_698401080.1427778637311
Content-Type: multipart/alternative; 
	boundary="----=_Part_2081_2028820705.1427778637311"

------=_Part_2081_2028820705.1427778637311
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


I got it, and I will the message and send it again, thanks !

On Monday, March 30, 2015 at 11:43:14 PM UTC+8, Julia Lawall wrote:
>
> On Mon, 30 Mar 2015, Charlie Wong Super wrote: 
>
> > This patch fixes the checkpatch.pl warning: 
> > WARNING: line over 80 characters 
> > FILE: drivers/staging/comedi/drivers/addi_apci_1564.c:114: 
> > +        unsigned int ctrl;                /* interrupt mode OR (edge) . 
> AND (level) */ 
>
> You don't really need the above two lines.  One can see the specific file 
> and the affected code lines just below. 
>
> julia 
>
> > 
> > Signed-off-by: Charlie Wong Super <1213c...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------ 
> >  1 file changed, 6 insertions(+), 6 deletions(-) 
> > 
> > diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c 
> b/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > index c481c48..dd335e8 100644 
> > --- a/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > +++ b/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > @@ -106,12 +106,12 @@ 
> >  #define APCI1564_COUNTER(x)                        ((x) * 0x20) 
> > 
> >  struct apci1564_private { 
> > -        unsigned long eeprom;                /* base address of EEPROM 
> register */ 
> > -        unsigned long timer;                /* base address of 12-bit 
> timer */ 
> > -        unsigned long counters;                /* base address of 
> 32-bit counters */ 
> > -        unsigned int mode1;                /* riding-edge/high level 
> channels */ 
> > -        unsigned int mode2;                /* falling-edge/low level 
> channels */ 
> > -        unsigned int ctrl;                /* interrupt mode OR (edge) . 
> AND (level) */ 
> > +        unsigned long eeprom;                /*base address of EEPROM 
> register*/ 
> > +        unsigned long timer;                /*base address of 12-bit 
> timer*/ 
> > +        unsigned long counters;                /*base address of 32-bit 
> counters*/ 
> > +        unsigned int mode1;                /*riding-edge/high level 
> channels*/ 
> > +        unsigned int mode2;                /*falling-edge/low level 
> channels*/ 
> > +        unsigned int ctrl;                /*interrupt mode OR 
> (edge).AND(level)*/ 
> >          struct task_struct *tsk_current; 
> >  }; 
> > 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20150330154011.GA11201%40ThinkPad. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

On Monday, March 30, 2015 at 11:43:14 PM UTC+8, Julia Lawall wrote:
>
> On Mon, 30 Mar 2015, Charlie Wong Super wrote: 
>
> > This patch fixes the checkpatch.pl warning: 
> > WARNING: line over 80 characters 
> > FILE: drivers/staging/comedi/drivers/addi_apci_1564.c:114: 
> > +        unsigned int ctrl;                /* interrupt mode OR (edge) . 
> AND (level) */ 
>
> You don't really need the above two lines.  One can see the specific file 
> and the affected code lines just below. 
>
> julia 
>
> > 
> > Signed-off-by: Charlie Wong Super <1213c...@gmail.com <javascript:>> 
> > --- 
> >  drivers/staging/comedi/drivers/addi_apci_1564.c | 12 ++++++------ 
> >  1 file changed, 6 insertions(+), 6 deletions(-) 
> > 
> > diff --git a/drivers/staging/comedi/drivers/addi_apci_1564.c 
> b/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > index c481c48..dd335e8 100644 
> > --- a/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > +++ b/drivers/staging/comedi/drivers/addi_apci_1564.c 
> > @@ -106,12 +106,12 @@ 
> >  #define APCI1564_COUNTER(x)                        ((x) * 0x20) 
> > 
> >  struct apci1564_private { 
> > -        unsigned long eeprom;                /* base address of EEPROM 
> register */ 
> > -        unsigned long timer;                /* base address of 12-bit 
> timer */ 
> > -        unsigned long counters;                /* base address of 
> 32-bit counters */ 
> > -        unsigned int mode1;                /* riding-edge/high level 
> channels */ 
> > -        unsigned int mode2;                /* falling-edge/low level 
> channels */ 
> > -        unsigned int ctrl;                /* interrupt mode OR (edge) . 
> AND (level) */ 
> > +        unsigned long eeprom;                /*base address of EEPROM 
> register*/ 
> > +        unsigned long timer;                /*base address of 12-bit 
> timer*/ 
> > +        unsigned long counters;                /*base address of 32-bit 
> counters*/ 
> > +        unsigned int mode1;                /*riding-edge/high level 
> channels*/ 
> > +        unsigned int mode2;                /*falling-edge/low level 
> channels*/ 
> > +        unsigned int ctrl;                /*interrupt mode OR 
> (edge).AND(level)*/ 
> >          struct task_struct *tsk_current; 
> >  }; 
> > 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20150330154011.GA11201%40ThinkPad. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2081_2028820705.1427778637311
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr"><br>
I got it, and I will the message and send it again, thanks !<br><br>On Monday, March 30, 2015 at 11:43:14 PM UTC+8, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, 30 Mar 2015, Charlie Wong Super wrote:
<br>
<br>&gt; This patch fixes the <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning:
<br>&gt; WARNING: line over 80 characters
<br>&gt; FILE: drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c:114:
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* interrupt mode OR (edge) . AND (level) */
<br>
<br>You don't really need the above two lines. &nbsp;One can see the specific file
<br>and the affected code lines just below.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Charlie Wong Super &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">1213c...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c | 12 ++++++------
<br>&gt; &nbsp;1 file changed, 6 insertions(+), 6 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c b/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; index c481c48..dd335e8 100644
<br>&gt; --- a/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; +++ b/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; @@ -106,12 +106,12 @@
<br>&gt; &nbsp;#define APCI1564_COUNTER(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;((x) * 0x20)
<br>&gt;
<br>&gt; &nbsp;struct apci1564_private {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long eeprom;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of EEPROM register */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long timer;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of 12-bit timer */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long counters;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of 32-bit counters */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* riding-edge/high level channels */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* falling-edge/low level channels */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* interrupt mode OR (edge) . AND (level) */
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long eeprom;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*base address of EEPROM register*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long timer;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*base address of 12-bit timer*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long counters;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>base address of 32-bit counters*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>riding-edge/high level channels*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>falling-edge/low level channels*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>interrupt mode OR (edge).AND(level)*/
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct task_struct *tsk_current;
<br>&gt; &nbsp;};
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150330154011.GA11201%40ThinkPad" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150330154011.GA11201%<wbr>40ThinkPad</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote><br>On Monday, March 30, 2015 at 11:43:14 PM UTC+8, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Mon, 30 Mar 2015, Charlie Wong Super wrote:
<br>
<br>&gt; This patch fixes the <a href="http://checkpatch.pl" target="_blank" rel="nofollow">checkpatch.pl</a> warning:
<br>&gt; WARNING: line over 80 characters
<br>&gt; FILE: drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c:114:
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* interrupt mode OR (edge) . AND (level) */
<br>
<br>You don't really need the above two lines. &nbsp;One can see the specific file
<br>and the affected code lines just below.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Charlie Wong Super &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">1213c...@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c | 12 ++++++------
<br>&gt; &nbsp;1 file changed, 6 insertions(+), 6 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c b/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; index c481c48..dd335e8 100644
<br>&gt; --- a/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; +++ b/drivers/staging/comedi/<wbr>drivers/addi_apci_1564.c
<br>&gt; @@ -106,12 +106,12 @@
<br>&gt; &nbsp;#define APCI1564_COUNTER(x)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;((x) * 0x20)
<br>&gt;
<br>&gt; &nbsp;struct apci1564_private {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long eeprom;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of EEPROM register */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long timer;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of 12-bit timer */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long counters;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* base address of 32-bit counters */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* riding-edge/high level channels */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* falling-edge/low level channels */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* interrupt mode OR (edge) . AND (level) */
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long eeprom;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*base address of EEPROM register*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long timer;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*base address of 12-bit timer*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned long counters;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>base address of 32-bit counters*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode1;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>riding-edge/high level channels*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int mode2;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>falling-edge/low level channels*/
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned int ctrl;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<wbr>interrupt mode OR (edge).AND(level)*/
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct task_struct *tsk_current;
<br>&gt; &nbsp;};
<br>&gt;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="8lAKzf-8LDIJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/20150330154011.GA11201%40ThinkPad" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20150330154011.GA11201%<wbr>40ThinkPad</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_2081_2028820705.1427778637311--

------=_Part_2080_698401080.1427778637311--

