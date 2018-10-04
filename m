X-GM-THRID: 6608376647638843392
Date: Thu, 4 Oct 2018 03:00:00 -0700 (PDT)
From: code@wizofe.uk
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1e5ef72d-8799-4a2c-b300-9c62328ffad2@googlegroups.com>
In-Reply-To: <27e5e948-574a-4107-b6c1-d074e02d8a9b@googlegroups.com>
References: <20181003232436.GA29874@kvasir.local>
 <alpine.DEB.2.21.1810040911560.3415@hadrien>
 <27e5e948-574a-4107-b6c1-d074e02d8a9b@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: axis-fifo: Remove
 parentheses after EOL
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_187_2023914415.1538647200971"
X-Google-Token: EKDJ190FPM5JTMtCOH00
X-Google-IP: 88.151.153.114

------=_Part_187_2023914415.1538647200971
Content-Type: multipart/alternative; 
	boundary="----=_Part_188_1425208954.1538647200972"

------=_Part_188_1425208954.1538647200972
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

OK, that was a bit unfortunate. So, yes indeed, I am sending a patch which 
includes the recommended changes. Thank you!

On Thursday, 4 October 2018 10:54:55 UTC+1, co...@wizofe.uk wrote:
>
> Sure, thing. I am commiting a new patch with th
>
> On Thursday, 4 October 2018 08:14:00 UTC+1, Julia Lawall wrote:
>>
>>
>>
>> On Thu, 4 Oct 2018, Ioannis Valasakis wrote: 
>>
>> > staging: axis-fifo: Remove parentheses after EOL 
>> > 
>> > According to the script checkpatch.pl and following the Linux 
>> > Kernel Coding Standards, I remove the parentheses from the EOL 
>> > and move them to a new line. 
>>
>> Thanks for the patch. 
>>
>> Could you move all the arguments after the first one one space to the 
>> right, so that they line up with the rigt side of the (. 
>>
>> Also, the commit log message should be written in the imperative, and it 
>> is better to write out words in full rather than using abbreviations. 
>> Look at some old commits with git log to get an idea of how to write the 
>> commit message. 
>>
>> julia 
>>
>> > 
>> > Signed-off-by: Ioannis Valasakis <co...@wizofe.uk> 
>> > --- 
>> >  drivers/staging/axis-fifo/axis-fifo.c | 8 ++++---- 
>> >  1 file changed, 4 insertions(+), 4 deletions(-) 
>> > 
>> > diff --git a/drivers/staging/axis-fifo/axis-fifo.c 
>> b/drivers/staging/axis-fifo/axis-fifo.c 
>> > index 63c8efd1b8db..f869adf0d0a2 100644 
>> > --- a/drivers/staging/axis-fifo/axis-fifo.c 
>> > +++ b/drivers/staging/axis-fifo/axis-fifo.c 
>> > @@ -364,8 +364,8 @@ static ssize_t axis_fifo_read(struct file *f, char 
>> __user *buf, 
>> >                   * if nothing is currently available 
>> >                   */ 
>> >                  spin_lock_irq(&fifo->read_queue_lock); 
>> > -                ret = wait_event_interruptible_lock_irq_timeout( 
>> > -                        fifo->read_queue, 
>> > +                ret = wait_event_interruptible_lock_irq_timeout 
>> > +                        (fifo->read_queue, 
>> >                          ioread32(fifo->base_addr + XLLF_RDFO_OFFSET), 
>> >                          fifo->read_queue_lock, 
>> >                          (read_timeout >= 0) ? 
>> msecs_to_jiffies(read_timeout) : 
>> > @@ -482,8 +482,8 @@ static ssize_t axis_fifo_write(struct file *f, 
>> const char __user *buf, 
>> >                   * currently enough room in the fifo 
>> >                   */ 
>> >                  spin_lock_irq(&fifo->write_queue_lock); 
>> > -                ret = wait_event_interruptible_lock_irq_timeout( 
>> > -                        fifo->write_queue, 
>> > +                ret = wait_event_interruptible_lock_irq_timeout 
>> > +                        (fifo->write_queue, 
>> >                          ioread32(fifo->base_addr + XLLF_TDFV_OFFSET) 
>> >                                  >= words_to_write, 
>> >                          fifo->write_queue_lock, 
>> > -- 
>> > 2.19.0 
>> > 
>> > -- 
>> > You received this message because you are subscribed to the Google 
>> Groups "outreachy-kernel" group. 
>> > To unsubscribe from this group and stop receiving emails from it, send 
>> an email to outreachy-kern...@googlegroups.com. 
>> > To post to this group, send email to outreach...@googlegroups.com. 
>> > To view this discussion on the web visit 
>> https://groups.google.com/d/msgid/outreachy-kernel/20181003232436.GA29874%40kvasir.local. 
>>
>> > For more options, visit https://groups.google.com/d/optout. 
>> > 
>>
>
------=_Part_188_1425208954.1538647200972
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK, that was a bit unfortunate. So, yes indeed, I am sendi=
ng a patch which includes the recommended changes. Thank you!<br><br>On Thu=
rsday, 4 October 2018 10:54:55 UTC+1, co...@wizofe.uk  wrote:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px =
#ccc solid;padding-left: 1ex;"><div dir=3D"ltr">Sure, thing. I am commiting=
 a new patch with th<br><br>On Thursday, 4 October 2018 08:14:00 UTC+1, Jul=
ia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0;margin-=
left:0.8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<br>On Thu, 4 Oct 2018, Ioannis Valasakis wrote:
<br>
<br>&gt; staging: axis-fifo: Remove parentheses after EOL
<br>&gt;
<br>&gt; According to the script <a href=3D"http://checkpatch.pl" rel=3D"no=
follow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;http://www.google=
.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3d=
AFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=
=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return tru=
e;">checkpatch.pl</a> and following the Linux
<br>&gt; Kernel Coding Standards, I remove the parentheses from the EOL
<br>&gt; and move them to a new line.
<br>
<br>Thanks for the patch.
<br>
<br>Could you move all the arguments after the first one one space to the
<br>right, so that they line up with the rigt side of the (.
<br>
<br>Also, the commit log message should be written in the imperative, and i=
t
<br>is better to write out words in full rather than using abbreviations.
<br>Look at some old commits with git log to get an idea of how to write th=
e
<br>commit message.
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Signed-off-by: Ioannis Valasakis &lt;<a rel=3D"nofollow">co...@wiz=
ofe.uk</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/axis-fifo/<wbr>axis-fifo.c | 8 ++++----
<br>&gt; =C2=A01 file changed, 4 insertions(+), 4 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/axis-fifo/<wbr>axis-fifo.c b/drivers/=
staging/axis-fifo/<wbr>axis-fifo.c
<br>&gt; index 63c8efd1b8db..f869adf0d0a2 100644
<br>&gt; --- a/drivers/staging/axis-fifo/<wbr>axis-fifo.c
<br>&gt; +++ b/drivers/staging/axis-fifo/<wbr>axis-fifo.c
<br>&gt; @@ -364,8 +364,8 @@ static ssize_t axis_fifo_read(struct file *f, =
char __user *buf,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * if nothing is currently available
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_<wbr>irq(&amp;fifo-&gt;read_q=
ueue_lock);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D wait_event_interruptible_lock_<wbr=
>irq_timeout(
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0fifo-<wbr>&gt;read_queue,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D wait_event_interruptible_lock_<wbr=
>irq_timeout
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>fifo-&gt;read_queue,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>ioread32(fifo-&gt;base_addr + XLLF_RDFO_OFFSET),
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0fifo-<wbr>&gt;read_queue_lock,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0(<wbr>read_timeout &gt;=3D 0) ? msecs_to_jiffies(read_timeout) :
<br>&gt; @@ -482,8 +482,8 @@ static ssize_t axis_fifo_write(struct file *f,=
 const char __user *buf,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * currently enough room in the fifo
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_<wbr>irq(&amp;fifo-&gt;write_=
queue_lock);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D wait_event_interruptible_lock_<wbr=
>irq_timeout(
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0fifo-<wbr>&gt;write_queue,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D wait_event_interruptible_lock_<wbr=
>irq_timeout
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0(<wbr>fifo-&gt;write_queue,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>ioread32(fifo-&gt;base_addr + XLLF_TDFV_OFFSET)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0&gt;=3D words=
_to_write,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0fifo-<wbr>&gt;write_queue_lock,
<br>&gt; --
<br>&gt; 2.19.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20181003232436.GA29874%40kvasir.local"=
 rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/20181003232436.GA29874%40kvasir=
.local&#39;;return true;" onclick=3D"this.href=3D&#39;https://groups.google=
.com/d/msgid/outreachy-kernel/20181003232436.GA29874%40kvasir.local&#39;;re=
turn true;">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>20=
181003232436.GA29874%<wbr>40kvasir.local</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow" target=3D"_blank" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div></blockquote></div>
------=_Part_188_1425208954.1538647200972--

------=_Part_187_2023914415.1538647200971--

