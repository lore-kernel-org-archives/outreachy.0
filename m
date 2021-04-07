X-GM-THRID: 6948397950015897600
X-Received: by 2002:a25:d48f:: with SMTP id m137mr4428938ybf.521.1617801261833;
        Wed, 07 Apr 2021 06:14:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5b:bc3:: with SMTP id c3ls948925ybr.6.gmail; Wed, 07 Apr
 2021 06:14:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxW9yj3efVtWpeNv+Oefmwxek2Xz8F9zJyXy6aCy53aHqIeStzxvRqHzYAON7HJ7eRJcylp
X-Received: by 2002:a25:2cd8:: with SMTP id s207mr552466ybs.87.1617801260971;
        Wed, 07 Apr 2021 06:14:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617801260; cv=none;
        d=google.com; s=arc-20160816;
        b=u2JxIXtvJNtv1mRLkmwYaCcYgYAYlACYblxgUMm2xtW0cVwX9P2V82zsNonYo7j+Ot
         SPgHBStGnZaiU9/YJJAZ6LntI7XaEAVD9rrXr3YfMzKWk3VtZyIc1A+jUapLebAgtfiT
         mDR1ztFkbeq+3cWGGPLzPprOhEI5Dre6svRlXaB4zhybgk9LFz7q8mKfmfJPk7C8BHgv
         1mpBNwB5d7GAqFTkUb6z5o8o+vgH8XPFo3lYJ6jwDsnvlqyzLxd4i4qPDBOvHl+9jpPF
         0t7asbgwV1CVc7tmhkd8FTPfkgHwy5WBHPkf4MYRZ3oMwdFp6qgxtS6T/dK3QLKey84u
         cQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=2vMu6CDU8zu7tm/eB8nbUpaw78hY13XtOuDtel8Qtpo=;
        b=j1LWwRpwMspIP54gaod05OsgCb4c8S6ZgIEsprolJ6/x8GzWb9pVoWbJfCm3ymA17Q
         H7bemxewMRl7PE4gMbP6q27fNow3sarCI2fZHVErSwf4TIqOREHWFh5JUo3L+9zW2eS/
         MVvj4iy8SZfDc6W22m/5T+IT0avGg/C3Wl4LNknZCz8oMrvlEQ3cqsrzcta7O/Zi3wgS
         KaV0tbgjlNQChljzDbAuGHZjl16B5HUJDDCcf2he4o+8pxa43KahiuzUKOq8QpxzH76P
         5cD2f2NTqOk5Ik3uXnyROxPvl0HJDwVl1q+en9ddKHNbmgZG+OTAci8snY+NacWu4k1N
         RZ+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.106 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-05.prod.phx3.secureserver.net (p3plsmtpa08-05.prod.phx3.secureserver.net. [173.201.193.106])
        by gmr-mx.google.com with ESMTPS id s18si1848821ybk.5.2021.04.07.06.14.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 06:14:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.106 as permitted sender) client-ip=173.201.193.106;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.106 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-vs1-f47.google.com ([209.85.217.47])
	by :SMTPAUTH: with ESMTPSA
	id U80hlcuoFgBqPU80hlTHzt; Wed, 07 Apr 2021 06:14:20 -0700
X-CMAE-Analysis: v=2.4 cv=GpeHRm5C c=1 sm=1 tr=0 ts=606db02c
 a=GFkePgBPOPvmhUBO7sJnuQ==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=3YhXtTcJ-WEA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=VwQbUJbxAAAA:8 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=VDxRAwm8vqx6A6xO54EA:9
 a=QEXdDO2ut3YA:10 a=cDyXFGGuxjcA:10 a=AjGcO6oz07-iQ99wixmX:22
 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-vs1-f47.google.com with SMTP id v29so9617984vsi.7
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Apr 2021 06:14:19 -0700 (PDT)
X-Gm-Message-State: AOAM531iOvxKi3uN+2m5D6qjA/5W8Ubasn6997LF4SUdUg8zs40TIyFq
	lUzpcQDBQ0i12v2qRrFvuaMPBD0p+TMMt7eQviU=
X-Received: by 2002:a67:c01d:: with SMTP id v29mr1750277vsi.23.1617801258997;
 Wed, 07 Apr 2021 06:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <ecc237fa-f349-4d5a-9894-e81a525f0257@gmail.com>
In-Reply-To: <ecc237fa-f349-4d5a-9894-e81a525f0257@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 7 Apr 2021 15:14:07 +0200
X-Gmail-Original-Message-ID: <CAK-LDb+TymbYEUPfiadOtvijUpG_Witq0B1Zg_6XLE+7A0C6Pg@mail.gmail.com>
Message-ID: <CAK-LDb+TymbYEUPfiadOtvijUpG_Witq0B1Zg_6XLE+7A0C6Pg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Help with record contributions
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4xfA0KSKQdCuML/9d9NSwIGzjhfcR1U/LrD4qAKakFVE7nyx/HYQuB2VlKr0Ofjpzff7z+h39f44kGIu81yadz1DPKYFfitlUW75W1zU8vs4pvh73Vt6o+
 11n21NgixnHWDz9hIkitAEtqFxb7Ur8AGgV9M++plpZtpk7o2L1nyE1bBdAoj1QNkko3E+fUKYbjxWGoCQjcrXach3Ca4/WmAfxIBd0+GzTYIdgPJCmlGp6a

On Wed, Apr 7, 2021 at 2:52 PM Beatriz Martins de Carvalho
<martinsdecarvalhobeatriz@gmail.com> wrote:
>
> Hello!
> How I record a patchset? I use the link to cover letter and describe
> each patch or I use the link to each patch?

Has it been added to staging-testing by Greg? You can then just put
the web link of that git tree. Please don't record contributions with the
mailing list links at this point because it'll then be difficult for us to
review your contributions if you put links to every patch you've ever
submitted.

For example, you can just record one contribution as cleanup patches
with following link for each project you're applying and you're done:

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Beatriz+Martins+de+Carvalho

Make sure to record solutions of project specific tasks as separate
contributions. :)


> Thanks in advance,
>
> Beatriz Martins de Carvalho
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ecc237fa-f349-4d5a-9894-e81a525f0257%40gmail.com.



--
Vaishali

