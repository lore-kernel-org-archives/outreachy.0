X-GM-THRID: 6528077387977981952
X-Received: by 10.176.11.146 with SMTP id c18mr2072447uak.100.1519973229620;
        Thu, 01 Mar 2018 22:47:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.52.151 with SMTP id b145ls4692506vka.12.gmail; Thu, 01 Mar
 2018 22:47:08 -0800 (PST)
X-Google-Smtp-Source: AG47ELsBQf/9l++Jzb3oE1qAiO4V1lPduAeuElw7NXhZ3U0/4RBDITQyTwEmLsJ3xo7s+U1UFCmf
X-Received: by 10.31.194.70 with SMTP id s67mr1948134vkf.88.1519973228717;
        Thu, 01 Mar 2018 22:47:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519973228; cv=none;
        d=google.com; s=arc-20160816;
        b=M/woWHhSxyBiv0JHgZY/D/yWa6yBXeQdzXa02JyeIxbp0W1Kc9eQo52gir0RYw5Jqg
         xlenn9OB5QXFCkH+OZizHenwP2BXjE9Y2pUC5yPZ4gn+O4Deuggu63As4R4dQNPIqKUm
         og/Hwzf7V7XqBP+kZLXlZFjdZsT1H38pnXjg6FB+HGaeez7DTLN4yeX4bZfDeZyWA7hQ
         fxOc8/YcfFcPllEHlVm7Eqq9Puk5S1smtSg8sZtmbNkPG8APCeo6E3oxyk1vWQ5ajxCC
         OTfetD+HuVlmKZggvmg1qyZFPT+mAy80o5D+JPg09Th2DsUcqtO04rUPX6Qc9wEoJxEc
         Tmlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=6E5EV2rP3Svp2KFxkziqVRjTeP0Uq2ycMbV5LeTsoPc=;
        b=HwuV3TNoC9+ixxLjdFLFwnPaDKtyJSXSgfx8KwKm9nsoe+uXo3hqWqvVspCmJOz96v
         VeYLOguBjTvVOKPUB2CbaP+vaUHOTuKb62PoFUgtQqJL9+KMEWV+73jE4633tsJjliUc
         ywi3X8xp4snG3fgi4f73KIA47gfMrvSyAwLoATTVQgqoAFE2ulJgEyMHI7HDHBM3WD3f
         kqXFXn8WpbXXZpbunx0ifhcuc3smBNs2jruKlX4i7jvWh2y2MgGc0ldtm8qBMUmVLQg2
         BUmay7Qkv58HCRDovOXaJ/b7I1Nn666kgvo7JAmpPkfjRYmCdrrvp9YlN6cYfVTxbjMJ
         fbtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsB4Zxpe;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id x135si376489vke.2.2018.03.01.22.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 22:47:08 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GsB4Zxpe;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x236.google.com with SMTP id w142so10767293qkb.8
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 22:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=6E5EV2rP3Svp2KFxkziqVRjTeP0Uq2ycMbV5LeTsoPc=;
        b=GsB4Zxpe0mXAC22h1xUXMIagLF/NnxWO4Yw14UDbyxxhX9AMRQlhCFD9AzmoLx88bS
         C1fGvv1DEHvYEY/0fBTaEt4OtHzU3NUFTtSS7rjxLCbH41G5LcV92CDhYxvNOs2HZB6w
         cstQDLIKwnVWdv3OAO7SfZvGp2BQ2oq2X649170opKVglXyCjHoQitbZxc9pgOcBEb4z
         mgqMXLJfQMMmriid2asxwgCRfRlVcNMFkc40abLiFr8ErbBzfIBGhJ1eE99qNuCINngn
         O1DxpChl/BSkVRcllIFNFjc6xZx4bWLeNDFDLRxFTSW9sdycPrvaa+Rx5JaEruclrceV
         9KJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=6E5EV2rP3Svp2KFxkziqVRjTeP0Uq2ycMbV5LeTsoPc=;
        b=G6Yv2z1akVAfa4gUMU2c7i+Lb+N9s+6YwRzP/NNEyhMmzLo+KJNriFJPEegVqe2XgC
         R0+wPBIGa92HkgYEmyJOqvUm0xlx7D6/lBeCo1u8ee10S+SDZjueGXifc4UNZaCk7HBN
         plQDQbLTQtAnG591K0OcMQgsYrm6GcQbgVINPBaBpQZR/cWdJhRLu0sRbK7VoxCZjtWe
         EszKwY/WPRZkTFnfo+xiZiC7ONV+hDbTz41mMhVloi7rDBwGp91+dKVsPsT/3IKRCVyB
         vfYrujh5yrAhHVibnTAccJeJNEgemiAVdnHCwvCXMZZgEurT/j2UsMBtAhoQ9ISf48HP
         KCrA==
X-Gm-Message-State: AElRT7G0v+LOOHB/uGPCYaurCoH+EeP2a8bH5NRSvD0aBTZ0F3ZBS+Pe
	qQaKoEJ6rcfZT4sxcghkqksTCWySQ/NFdvttv2o=
X-Received: by 10.55.189.196 with SMTP id n187mr6767144qkf.141.1519973227988;
 Thu, 01 Mar 2018 22:47:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.176.45 with HTTP; Thu, 1 Mar 2018 22:47:07 -0800 (PST)
In-Reply-To: <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <alpine.DEB.2.20.1803012135130.3474@hadrien> <1519937773-28053-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Fri, 2 Mar 2018 07:47:07 +0100
Message-ID: <CAO393ABjrRcjHStB5TYJfnKSM3qs8oN43ckEU1_=C2Gn=YFxvQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Help with Mutt
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: multipart/alternative; boundary="94eb2c043d8a528e090566685832"

--94eb2c043d8a528e090566685832
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 1, 2018 at 9:56 PM, Nishka Dasgupta <
nishka.dasgupta_ug18@ashoka.edu.in> wrote:

> This is with response to your email: I think you will need to give more
> information. Do you get some error message? Does nothing happen? Does it
> crash? What did you do before, in terms of setting up configuration
> files? etc. Any particular thing about the situation that you can think
> of.
>
>
Hello Nishka,

You don't need to follow this format of responding to emails. Just respond
inline.

My response to your email is as follows: I followed the instructions at
> OutreachyfirstpatchSetup and Outreachyfirstpatch at Linux kernel
> newbies. The instructions said to "say 'no' to creating an inbox for
> now". That is what I did. If I send an email to myself from within mutt
> (using the "m" command) it shows up in the inbox; but no other email
> sent to my account is visible. (Up until now I have been viewing emails
> and responses in a browser and composing replies in vim.)
>
> In accordance with the instructions, my muttrc file contains the
> following lines:
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Nishka Dasgupta <nishka....ashoka.edu.in>"
> set use_from=yes
> set edit_headers=yes
>
> My smtp and git appear to be set up fine, since those are how I have
> been sending emails so far. However, I don't know how to ensure that
> emails sent to my email account show up in mutt. How can I address this?
>
>
So you are able to send emails but not receive them? Is that all your
muttrc file contains? Have you also made a .esmtprc file?
You could try setting up mutt with smtp by searching google for .muttrc
configuration files that use smtp.

Thank you for your time.
>
> Regards,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1519937773-28053-1-git-send-
> email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>



-- 
Shraddha

--94eb2c043d8a528e090566685832
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Mar 1, 2018 at 9:56 PM, Nishka Dasgupta <span dir=3D"ltr">&lt;<=
a href=3D"mailto:nishka.dasgupta_ug18@ashoka.edu.in" target=3D"_blank">nish=
ka.dasgupta_ug18@ashoka.edu.in</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">This is with response to your email: I think you will need to=
 give more<br>
<span class=3D"">information. Do you get some error message? Does nothing h=
appen? Does it<br>
crash? What did you do before, in terms of setting up configuration<br>
files? etc. Any particular thing about the situation that you can think<br>
of.<br>
<br></span></blockquote><div><br></div><div>Hello Nishka,</div><div><br></d=
iv><div>You don&#39;t need to follow this format of responding to emails. J=
ust respond inline.</div><div><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><spa=
n class=3D"">
</span>My response to your email is as follows: I followed the instructions=
 at<br>
OutreachyfirstpatchSetup and Outreachyfirstpatch at Linux kernel<br>
newbies. The instructions said to &quot;say &#39;no&#39; to creating an inb=
ox for<br>
now&quot;. That is what I did. If I send an email to myself from within mut=
t<br>
(using the &quot;m&quot; command) it shows up in the inbox; but no other em=
ail<br>
sent to my account is visible. (Up until now I have been viewing emails<br>
and responses in a browser and composing replies in vim.)<br>
<br>
In accordance with the instructions, my muttrc file contains the<br>
following lines:<br>
set sendmail=3D&quot;/usr/bin/esmtp&quot;<br>
set envelope_from=3Dyes<br>
set from=3D&quot;Nishka Dasgupta &lt;nishka....<a href=3D"http://ashoka.edu=
.in" rel=3D"noreferrer" target=3D"_blank">ashoka.edu.in</a>&gt;&quot;<br>
set use_from=3Dyes<br>
set edit_headers=3Dyes<br>
<br>
My smtp and git appear to be set up fine, since those are how I have<br>
been sending emails so far. However, I don&#39;t know how to ensure that<br=
>
emails sent to my email account show up in mutt. How can I address this?<br=
>
<span class=3D""><br></span></blockquote><div><br></div><div>So you are abl=
e to send emails but not receive them? Is that all your muttrc file contain=
s? Have you also made a .esmtprc file?</div><div>You could try setting up m=
utt with smtp by searching google for .muttrc configuration files that use =
smtp.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Thank you for your time.<br>
<br>
Regards,<br>
Nishka Dasgupta<br>
<br>
--<br>
You received this message because you are subscribed to the Google Groups &=
quot;outreachy-kernel&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.com">=
outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
To post to this group, send email to <a href=3D"mailto:outreachy-kernel@goo=
glegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
</span>To view this discussion on the web visit <a href=3D"https://groups.g=
oogle.com/d/msgid/outreachy-kernel/1519937773-28053-1-git-send-email-nishka=
.dasgupta_ug18%40ashoka.edu.in" rel=3D"noreferrer" target=3D"_blank">https:=
//groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1519937773-28053-1-g=
it-send-<wbr>email-nishka.dasgupta_ug18%<wbr>40ashoka.edu.in</a>.<br>
<div class=3D"HOEnZb"><div class=3D"h5">For more options, visit <a href=3D"=
https://groups.google.com/d/optout" rel=3D"noreferrer" target=3D"_blank">ht=
tps://groups.google.com/d/<wbr>optout</a>.<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Shraddha<br></div></div>
</div></div>

--94eb2c043d8a528e090566685832--

