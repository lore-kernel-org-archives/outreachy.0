X-GM-THRID: 6522835256508153856
X-Received: by 10.157.67.99 with SMTP id y32mr1615238oti.83.1518716445181;
        Thu, 15 Feb 2018 09:40:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.148 with SMTP id y20ls155998otd.12.gmail; Thu, 15 Feb
 2018 09:40:44 -0800 (PST)
X-Google-Smtp-Source: AH8x2260vbo3orMmXnQYumbTnC9ZsQlsHwlRP4RLXcIP54b83r7EUB1B9/7/tmY1RecJ0/J4Ipo8
X-Received: by 10.157.25.12 with SMTP id j12mr1641881ota.20.1518716444161;
        Thu, 15 Feb 2018 09:40:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518716444; cv=none;
        d=google.com; s=arc-20160816;
        b=PdyozkuGjTBvahpNNvZLi66bKYcvi3EklDbGuT9exfkxttBlTX+1A7d54ZLS5CBWiz
         JxRJ6ivgnI/7+TJxaqG/w15ds6e0CKZg0Nb033M3kKr7oqZB37oRBf8DpXEffi/PTbGK
         XHlwJHlyLFqvkVPpdV+qGarkino6fnpQl8Tddg3t2/0zQc6MOmrZkz/nig9Pnu7eLyU3
         iRHby5lUq5yOyaQTuXu8PVkrne0o9Z4TMTbHS1B7WEoPKuUPEqcisTxlYHW8NAb2Vtdl
         Pijh4dVl2pGkOU5m7jma6q6BpDk+WqJY6rKYNacfLHmfil6NQ4gQQTGSQFxyIrIOt55U
         MYgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=i9v8x3sUo/iDlDMUMtFFd4W2d2Y89/ovJ33MYEJ6j/k=;
        b=lGegr8z1uw90b/Fh3g5xuYWqRlHCYzcBJESBClAUqk16gLGwGIiQ/J127YM1uzAfGN
         aVeQmeb9v6EhQ/EWtm7eSxoRQtNxrmTlmPtIKKcB/VB1m6nmieV6J6VAzl0pe/GCrk3Y
         l/YDibmWMbnZcFXRF3DPYpiHn7HEh9+6fsdPaOu52zS3AL3CJ7iCccRh/crjv9dKzNe2
         ZsiwR1sKAAAItFQdyCUF7Dx0iq/ipliWu02ODY+Os69OI0o4YAMK6NCgSTbU7+dVwwvq
         wWPPPIvygEyGQ4uX0r+kYAYRkfkuUGmutz/YaoH//EjdTL1kdm+JSGAmAqJuHALDwkS1
         fOuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntmqEsOd;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-oi0-x233.google.com (mail-oi0-x233.google.com. [2607:f8b0:4003:c06::233])
        by gmr-mx.google.com with ESMTPS id y81si101372oia.4.2018.02.15.09.40.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Feb 2018 09:40:44 -0800 (PST)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::233 as permitted sender) client-ip=2607:f8b0:4003:c06::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ntmqEsOd;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:4003:c06::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x233.google.com with SMTP id y16so397214oie.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Feb 2018 09:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=i9v8x3sUo/iDlDMUMtFFd4W2d2Y89/ovJ33MYEJ6j/k=;
        b=ntmqEsOd2e0ww38y7J7fR9RwyOFn2EDoee7MMRFWHLB249USjn2EQaW4UnTffaXTLD
         1Z4A2TcCIrUY+4QzkEEEr4D2M6poNy90xzCQckdv3IO/Kxqi4yDAjWZqzKo/ixPp8r2Z
         jy8lrZ0nhpzADfk1pcft0TkvSt0zOo7pxVnG36we/zjPFB1ne/ngOr6vDmjDudamV6SR
         pZI/nGeBSqRIqPsqWx4WWt6/fFhOCBr2CzT/sZKnU8+tfkmmGsOYUvXhbdFJ9C4TWPbw
         YVvsFlOatsBh8cCeW6C7QtmkRNj8d2R8wMeqD5U6NsE8eVr5jiRkEgCbk2fGCyvc4qql
         Lrqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=i9v8x3sUo/iDlDMUMtFFd4W2d2Y89/ovJ33MYEJ6j/k=;
        b=PhPiW3EnqT1vaHCF0iyCR2BjlqjfVsPI9iMYFQFdAeg0R6Yeuhqn+WCzJeHVJR3b+W
         cINBs9kf0wksK7y6d6lzZfSFQ47APJJpyHNJ8Bs5mMJ8/XzM4jDBolcRi9xAiD2RqTVl
         +iEcnYS6qF5VoyooY4JOkqldObFwmYFB+ywXn3xUEtPUmAcIcmHhsEaGRvAdk5KeFy4n
         w8283plJjeQI4pjbi5Q6IsdqnV4w7b0SLQXz6o7+GEXPNgh/YM5tZU7LYQ0bPQUw0kof
         aIRWXzO4lm/8BxpAYHwPVWugJ/uQ6sCUTrCToptcuKv/5qwPiKIW6K7RF88HGvyY3JDT
         tSnw==
X-Gm-Message-State: APf1xPBL+QbfGtXoaCXtEwk19VLc3ZYHaAZu8czV10Wm5ppN6jCp0t9w
	MOEXG+wu61F1xGV9qDf6gm+gaq5tuWHm/y7GVBI=
X-Received: by 10.202.240.212 with SMTP id o203mr216689oih.182.1518716443411;
 Thu, 15 Feb 2018 09:40:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.150.70 with HTTP; Thu, 15 Feb 2018 09:40:43 -0800 (PST)
In-Reply-To: <20180215173939.GA371@shraddha>
References: <a8ea6283-061c-4172-a7c1-e2a7e99d46f3@googlegroups.com> <20180215173939.GA371@shraddha>
From: Shraddha Barke <shraddha.6596@gmail.com>
Date: Thu, 15 Feb 2018 18:40:43 +0100
Message-ID: <CAO393AAt+BW2OtTxz-3sm1V4jxjN5=dP7RycrR2a-7w6TvD5PA@mail.gmail.com>
Subject: Fwd: [Outreachy kernel] who to send first patch to
To: outreachy-kernel <outreachy-kernel@googlegroups.com>, Dafna Hirschfeld <dafna3@gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0919dc1fc8d7056543ba2f"

--94eb2c0919dc1fc8d7056543ba2f
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 15, 2018 at 09:32:11AM -0800, Dafna Hirschfeld wrote:
> Hi,
> I follow the first-patch <https://kernelnewbies.org/Outreachyfirstpatch>
> tutorial.
> When running the get_maintainer.sh script, I get Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>.
> Should I send the patch to this mailing list and add the maintainer as a
> CC, or should I send two separate mails, one to this mailing list and one
> to the maintainer ?

Hello Dafna :)

Welcome to the application process! You should send the patch to the
Outreachy mailing list and the relevant maintainers in a single email.
No need for separate emails.

-Shraddha

>
> Thanks,
> Dafna
>
> --
> You received this message because you are subscribed to the Google Groups
"outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/
msgid/outreachy-kernel/a8ea6283-061c-4172-a7c1-e2a7e99d46f3%40googlegroups.
com.
> For more options, visit https://groups.google.com/d/optout.




-- 
Shraddha

--94eb2c0919dc1fc8d7056543ba2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><span class=3D"">On Thu, Feb 15=
, 2018 at 09:32:11AM -0800, Dafna Hirschfeld wrote:<br>
&gt; Hi,<br>
</span>&gt; I follow the first-patch &lt;<a href=3D"https://kernelnewbies.o=
rg/Outreachyfirstpatch" rel=3D"noreferrer" target=3D"_blank">https://kernel=
newbies.org/<wbr>Outreachyfirstpatch</a>&gt;<br>
<span class=3D"">&gt; tutorial.<br>
&gt; When running the get_maintainer.sh script, I get Greg Kroah-Hartman<br=
>
&gt; &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@linuxfoundati=
on.org</a>&gt;.<br>
&gt; Should I send the patch to this mailing list and add the maintainer as=
 a<br>
&gt; CC, or should I send two separate mails, one to this mailing list and =
one<br>
&gt; to the maintainer ?<br>
<br>
</span>Hello Dafna :)<br>
<br>
Welcome to the application process! You should send the patch to the Outrea=
chy mailing list and the relevant maintainers in a single email.<br>
No need for separate emails.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-Shraddha<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Thanks,<br>
&gt; Dafna<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com">outreachy-kernel+unsubscribe@<wbr>googlegroups.com</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com">outreachy-kernel@googlegroups.<wbr>com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/a8ea6283-061c-4172-a7c1-e2a7e99d46f3%40goo=
glegroups.com" rel=3D"noreferrer" target=3D"_blank">https://groups.google.c=
om/d/<wbr>msgid/outreachy-kernel/<wbr>a8ea6283-061c-4172-a7c1-<wbr>e2a7e99d=
46f3%40googlegroups.<wbr>com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 rel=3D"noreferrer" target=3D"_blank">https://groups.google.com/d/<wbr>opto=
ut</a>.<br>
<br>
</div></div></div><br><br clear=3D"all"><div><br></div>-- <br><div class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Shrad=
dha<br></div></div>
</div>

--94eb2c0919dc1fc8d7056543ba2f--

