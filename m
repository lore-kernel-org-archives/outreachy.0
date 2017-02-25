X-GM-THRID: 6390634706454446080
Date: Sat, 25 Feb 2017 01:32:42 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, w.d.hubbs@gmail.com, chris@the-brannons.com,
	kirk@reisers.ca, samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Message-Id: <3607bae1-f325-4a95-bbe8-d94fcf492009@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702241814330.3089@hadrien>
References: <58b067d9.4d8d620a.8af7e.1ae6@mx.google.com>
 <alpine.DEB.2.20.1702241814330.3089@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: Replace
 BUG_ON() with WARN_ON().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2111_212089433.1488015162296"
X-Google-Token: ELqexcUFRzA7O5R4mMo0
X-Google-IP: 117.192.154.88

------=_Part_2111_212089433.1488015162296
Content-Type: multipart/alternative; 
	boundary="----=_Part_2112_250885689.1488015162296"

------=_Part_2112_250885689.1488015162296
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



> > diff --git a/drivers/staging/speakup/kobjects.c 
> b/drivers/staging/speakup/kobjects.c 
> > index ca075fe..68a4cc8 100644 
> > --- a/drivers/staging/speakup/kobjects.c 
> > +++ b/drivers/staging/speakup/kobjects.c 
> > @@ -833,10 +833,12 @@ static ssize_t message_show(struct kobject *kobj, 
> >          struct msg_group_t *group = spk_find_msg_group(attr->attr.name); 
>
> >          unsigned long flags; 
> > 
> > -        BUG_ON(!group); 
> > -        spin_lock_irqsave(&speakup_info.spinlock, flags); 
> > -        retval = message_show_helper(buf, group->start, group->end); 
> > -        spin_unlock_irqrestore(&speakup_info.spinlock, flags); 
> > +        if (WARN_ON(!group)) { 
> > +                spin_lock_irqsave(&speakup_info.spinlock, flags); 
> > +                retval = message_show_helper(buf, group->start, 
> group->end); 
> > +                spin_unlock_irqrestore(&speakup_info.spinlock, flags); 
> > +        } 
> > + 
> >          return retval; 
>
> I think you should go back and think much harder about what this code 
> does.  Does WARN_ON return true if the condition is true or if it is 
> false?

 
    if group = NULL
    then WARN_ON(!group) would return true 
 

>  If WARN_ON returns true, then should the code that you have put in 
> the then branch be executed?


    The if condition has to be (!WARN_ON(!group))  instead of 
WARN_ON(!group)
     then then the statements inside if block won't excetute and the 
function would return
     retval with value 0.  

 What code do you consider to be the recovery 
> code?  BUG_ON always crashed the kernel, so there was no recovery code 
> before.  What new code have you added to perform the recovery? 

    
    I didn't understand regarding recovery. Here further changes has to be 
made. As message_show is passed as argument in  __ATTR().
    It has been called multiple times in drivers/staging/speakup/kobjects.c 
and in the following way:

 __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store);

      
     Within staging/include/linux/sysfs.h  it has been defined.

      #define __ATTR(_name, _mode, _show, _store) {                \
    .attr = {.name = __stringify(_name),                \
         .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },        \
    .show    = _show,                        \
    .store    = _store,                        \
     }
           
   From the above code it would imply changes has to be made within this 
macro or in show macro definition. 
   Not sure about what would happen if _show value is 0. 

 What is 
> the value of retval if the branch is or is not taken?  Is this the 
> meaningful value in each case? 
>
>    retval is assigned with size of the message to be displayed. Few of the 
things are not clear.
 

> julia 
>
>
> >  } 
> > 
> > -- 
> > 2.9.3 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.1ae6%40mx.google.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_2112_250885689.1488015162296
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; diff --git a/drivers/=
staging/speakup/<wbr>kobjects.c b/drivers/staging/speakup/<wbr>kobjects.c
<br>&gt; index ca075fe..68a4cc8 100644
<br>&gt; --- a/drivers/staging/speakup/<wbr>kobjects.c
<br>&gt; +++ b/drivers/staging/speakup/<wbr>kobjects.c
<br>&gt; @@ -833,10 +833,12 @@ static ssize_t message_show(struct kobject *=
kobj,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct msg_g=
roup_t *group =3D spk_find_msg_group(attr-&gt;<a href=3D"http://attr.name" =
target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;http://w=
ww.google.com/url?q\x3dhttp%3A%2F%2Fattr.name\x26sa\x3dD\x26sntz\x3d1\x26us=
g\x3dAFQjCNHVZziM5WxvwwohLn8CjC1XIK6M6w&#39;;return true;" onclick=3D"this.=
href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Fattr.name\x26sa\x3d=
D\x26sntz\x3d1\x26usg\x3dAFQjCNHVZziM5WxvwwohLn8CjC1XIK6M6w&#39;;return tru=
e;">attr.<wbr>name</a>);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0unsigned lon=
g flags;
<br>&gt;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0BUG_ON(!group);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_irqsave=
(&amp;<wbr>speakup_info.spinlock, flags);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D messag=
e_show_helper(buf, group-&gt;start, group-&gt;end);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_<wbr>=
irqrestore(&amp;speakup_info.<wbr>spinlock, flags);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (WARN_ON(!grou=
p)) {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_lock_<wbr>irqsave(&amp;speakup_info.<=
wbr>spinlock, flags);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retval =3D message_show_helper(buf, group-=
&gt;start, group-&gt;end);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_<wbr>irqrestore(&amp;speakup_i=
nfo.<wbr>spinlock, flags);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; +
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return retva=
l;
<br>
<br>I think you should go back and think much harder about what this code
<br>does. =C2=A0Does WARN_ON return true if the condition is true or if it =
is
<br>false?</blockquote><div>=C2=A0</div><div>=C2=A0=C2=A0=C2=A0 if group =
=3D NULL<br>=C2=A0=C2=A0=C2=A0 then WARN_ON(!group) would return true <br>=
=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"> =C2=A0If WARN=
_ON returns true, then should the code that you have put in
<br>the then branch be executed?</blockquote><div><br>=C2=A0=C2=A0=C2=A0 Th=
e if condition has to be (!WARN_ON(!group))=C2=A0 instead of WARN_ON(!group=
)<br>=C2=A0 =C2=A0=C2=A0 then then the statements inside if block won&#39;t=
 excetute and the function would return<br>=C2=A0 =C2=A0=C2=A0 retval with =
value 0.=C2=A0 <br><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"> =
=C2=A0What code do you consider to be the recovery
<br>code? =C2=A0BUG_ON always crashed the kernel, so there was no recovery =
code
<br>before. =C2=A0What new code have you added to perform the recovery? </b=
lockquote><div>=C2=A0 =C2=A0 <br>=C2=A0=C2=A0=C2=A0 I didn&#39;t understand=
 regarding recovery. Here further changes has to be made. As message_show i=
s passed as argument in=C2=A0 __ATTR().<br>=C2=A0 =C2=A0 It has been called=
 multiple times in drivers/staging/speakup/kobjects.c and in the following =
way:<br><pre> __ATTR(announcements, S_IWUSR | S_IRUGO, message_show, messag=
e_store);</pre>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0=C2=A0 =
Within staging/include/linux/sysfs.h=C2=A0 it has been defined.<br><br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 #define __ATTR(_name, _mode, _show, _store) {=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 \<br>=C2=A0=C2=A0=C2=A0 .attr =3D {.name =3D __stringify(_name),=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0.mode =3D VERIFY_OCTAL_PERMISSIONS=
(_mode) },=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0 .sh=
ow=C2=A0=C2=A0=C2=A0 =3D _show,=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 \<br>=
=C2=A0=C2=A0=C2=A0 .store=C2=A0=C2=A0=C2=A0 =3D _store,=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 =C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0 =C2=A0 <br>=C2=A0=C2=A0 From the above code it would imply ch=
anges has to be made within this macro or in show macro definition. <br>=C2=
=A0=C2=A0 Not sure about what would happen if _show value is 0. <br><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;=
border-left: 1px #ccc solid;padding-left: 1ex;">=C2=A0What is
<br>the value of retval if the branch is or is not taken? =C2=A0Is this the
<br>meaningful value in each case?
<br>
<br></blockquote><div>=C2=A0=C2=A0 retval is assigned with size of the mess=
age to be displayed. Few of the things are not clear.<br>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-le=
ft: 1px #ccc solid;padding-left: 1ex;">julia
<br>
<br>
<br>&gt; =C2=A0}
<br>&gt;
<br>&gt; --
<br>&gt; 2.9.3
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"dLKwprwCAgAJ" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;jav=
ascript:&#39;;return true;" onclick=3D"this.href=3D&#39;javascript:&#39;;re=
turn true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"dLKwprwCAgAJ" rel=3D"nofollow" onmous=
edown=3D"this.href=3D&#39;javascript:&#39;;return true;" onclick=3D"this.hr=
ef=3D&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com<=
/a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.1ae6%40mx.goog=
le.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;=
https://groups.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.=
1ae6%40mx.google.com&#39;;return true;" onclick=3D"this.href=3D&#39;https:/=
/groups.google.com/d/msgid/outreachy-kernel/58b067d9.4d8d620a.8af7e.1ae6%40=
mx.google.com&#39;;return true;">https://groups.google.com/d/<wbr>msgid/out=
reachy-kernel/<wbr>58b067d9.4d8d620a.8af7e.1ae6%<wbr>40mx.google.com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;htt=
ps://groups.google.com/d/optout&#39;;return true;" onclick=3D"this.href=3D&=
#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.go=
ogle.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote>
------=_Part_2112_250885689.1488015162296--

------=_Part_2111_212089433.1488015162296--

