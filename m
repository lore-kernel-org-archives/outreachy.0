X-GM-THRID: 6471306251625037824
X-Received: by 10.13.223.147 with SMTP id i141mr13885040ywe.225.1506733871422;
        Fri, 29 Sep 2017 18:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.123.212 with SMTP id w203ls345019ywc.35.gmail; Fri, 29 Sep
 2017 18:11:10 -0700 (PDT)
X-Received: by 10.129.153.207 with SMTP id q198mr14128643ywg.193.1506733870632;
        Fri, 29 Sep 2017 18:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506733870; cv=none;
        d=google.com; s=arc-20160816;
        b=naW2cnIPPielQHIRMIQLREVh4ys5T0gTtkT39PcZT+3YkJY94r41rXY8Fe5XM9utXS
         lGFVwF82ECtNRafzzIk1ypjXFx1uMfOD8an4iveglE6Q6Lgu9SZ2nx8fsGgp+g1j/+4l
         sqdkRW+A6x6wVoGPerbBOwUivrAp3PdmIR3LT3LMmMEg2BvVfn/ClxH04v+v9TbXzlB1
         SPKtHG+zn/VbSzqlknwyaiTlw4rtIlZHqCPhwdFa++EoBXg4z123Wq9RNWt1N8a2Krgv
         KGssnMvdU5Gq4o23/f+ElMR6pgiJHkfTnkHMj7LQWms8rQ+a7OLF3TS/ozJ4yTz/eBDi
         Z0Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=wJLl2YGgC2z7gHGUHfhF181cb6vGPs8Xxqgq5YnB3gA=;
        b=TSz1lECxuG045xKrt+RURuMZ+hmuqQnvI0LkpNFnSFUjHYHgnm9YQ7CDHn09TuJBFZ
         2dmXMh1kCUKCKg8uHWMY0GOCI16MHciheqHP1VqMqYicW8BTjaaKN4iCI+dXRRanFKO2
         MN4SppKMoeoQPsi55fUd3wsZ/emNEf80eLPz3LNYYVB0zcHmrLNHbdEAbZMMKPV0XzSr
         kLmX1uXspzxpfGPcknMhWP8GZ12avRiskhmE2pfhWVsvemSNnkL8lnbZLfAzRVBWhWXk
         aQ9cscdPHY9o4oWm2VDtdjc+IKPZ3GtlfDDHfo53s9Wlqr0SKipJd9QMztNwsQhL8WeU
         Vkww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g5r1yHYI;
       spf=pass (google.com: domain of fweisbec@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) smtp.mailfrom=fweisbec@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <fweisbec@gmail.com>
Received: from mail-yw0-x235.google.com (mail-yw0-x235.google.com. [2607:f8b0:4002:c05::235])
        by gmr-mx.google.com with ESMTPS id u4si298704ywc.2.2017.09.29.18.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 18:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of fweisbec@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) client-ip=2607:f8b0:4002:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g5r1yHYI;
       spf=pass (google.com: domain of fweisbec@gmail.com designates 2607:f8b0:4002:c05::235 as permitted sender) smtp.mailfrom=fweisbec@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x235.google.com with SMTP id r85so849190ywg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 18:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wJLl2YGgC2z7gHGUHfhF181cb6vGPs8Xxqgq5YnB3gA=;
        b=g5r1yHYIPWtjV4ccMQvrz825idrLgtO4Tl3nfx3VFoIjKcbpDWwla1EYQEL9K4/+qE
         HKMGLDitUfaydT4WdzG9nEhGEsBkB1pb0IA6qh5AG0fT6THONqHUPbFaErGOW5y9nv2p
         e4buTmB6k/2VhFSAzq1IM81TGDm5hewieKwzy9+mFZiaOHQqzvPujtkDcSOTQTVb3cM9
         FWOL1Pkq8OnuCVN0Iox2G4/1dTlyaV4Jckjj5EwyYqqmsOwuB09+Gyk1q/DYx0Fo1HWG
         66HhDM3wpwh9jMs8NTJKbGxgSaG++qg8u4YT8F5H+ggEc6MnTOrHCUu4vW1sgsGkdtvb
         bdLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wJLl2YGgC2z7gHGUHfhF181cb6vGPs8Xxqgq5YnB3gA=;
        b=etrDiuX2RYtDahL7MSOqBKlTXGm1bWdnuynpMVdtxGN1RFKHasp11USi2pPmJTdeXq
         jvSov4assr/a/zC5qNzfjkqKCEKrKiWK/PFWKEsrOOolnj0W6db0isaEt8HeQVJYZNTz
         XFoB17o1rC5CQlLir6ulirfuj8LL4W/rpNVAbmdyTKoYI8QXc7T9P7UGSMjGhNeJu6E/
         5McdYbJOBtInlywA++Qe83vPSUamuLC1wtqBadEdq3pJONOCaMl0zi4hCKhwebGMeQ6d
         dmEIXEfDjxCJ3OpvLkCcDl8us8smToEie7UkNiVkBwtfotPexfzrq/OS7+PTGDzZQsMU
         vWIw==
X-Gm-Message-State: AHPjjUgIPLcVKR9AFy7T9I4WNmFsMBhqusUtrKcbrLdWeD71EPXWkchg
	GiZu7I1NSwDoEunORIEaUtXFPl1d+KU6DahSx24lWg==
X-Google-Smtp-Source: AOwi7QD4VF2yH91CoYo/XzRfC+3b3hXapfCWnsaqzW1UTNtMBwNnHvpumyd3IqLXRO+tvGiGQHFx9Z+eA/lSEvdjpjQ=
X-Received: by 10.37.63.68 with SMTP id m65mr7314665yba.76.1506733868749; Fri,
 29 Sep 2017 18:11:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.241.131 with HTTP; Fri, 29 Sep 2017 18:11:08 -0700 (PDT)
In-Reply-To: <10f2cfd0-e601-49a3-af37-6157f60b1da9@googlegroups.com>
References: <10f2cfd0-e601-49a3-af37-6157f60b1da9@googlegroups.com>
From: Frederic Weisbecker <fweisbec@gmail.com>
Date: Sat, 30 Sep 2017 03:11:08 +0200
Message-ID: <CAFTL4hxsanExgqVXRMasDAt-sLK78_w+hEYrR5rXE9KK9GzGkg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Hi, problems configuring mutt
To: dafna3@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

2017-09-29 17:09 GMT+02:00 <dafna3@gmail.com>:
>
> I started with the instructions in the site https://kernelnewbies.org/Outreachyfirstpatch#head-17dd753ec497c8f7e2305ce78be8c6ca7cd1c92c
> I sent a mail to myself , It got to the spam folder with warning "this message was not encrypted"
>
> I also got a mail from google:
>
> Review blocked sign-in attempt
> Hi Dafna,
> Google just blocked someone from signing into your Google Account dafna3@gmail.com from an app that may put your account at risk.
>
>
>
> Then after googling, I tried to set ~/.muttrc:
>
> set ssl_starttls = yes
> set ssl_force_tls = yes
> set imap_user = 'dafna3@gmail.com'
> set smtp_url = "smtp://dafna3@smtp.gmail.com:587/"
> set from = 'dafna3@gmail.com'
> set realname = 'Dafna Hirschfeld'
> set folder = "imaps://imap.gmail.com:993"
> set record="+[Gmail]/Sent Mail"
> set spoolfile = imaps://imap.gmail.com:993/INBOX
> set postponed="+[Gmail]/Drafts"
> set header_cache = "~/.mutt/cache/headers"
> set message_cachedir = "~/.mutt/cache/bodies"
> set certificate_file = "~/.mutt/certificates"
>
> and my ~/.esmtprc is:
>
> identity "dafna3@gmail.com"
> hostname smtp.gmail.com:587
> username "dafna3@gmail.com"
> starttls required
>
> now when I run "mutt -d 5" I get the message:
>
> Password for dafna3@gmail.com@imap.gmail.com:
>
> after I enter my password I get "Login Failed"
>
> looking at the ~/.muttdebug0:
>
>
> [2017-09-29 18:01:21] Mutt/1.5.24 (2015-08-30) debugging at level 5
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc'.
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5768, *ldata = (nil)
> [2017-09-29 18:01:21] parse_attach_list: added */.* [9]
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = (nil)
> [2017-09-29 18:01:21] parse_attach_list: added text/x-vcard [7]
> [2017-09-29 18:01:21] parse_attach_list: added application/pgp.* [2]
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = 0x11ff180
> [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
> [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*
> [2017-09-29 18:01:21] parse_attach_list: added application/x-pkcs7-.* [2]
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5758, *ldata = (nil)
> [2017-09-29 18:01:21] parse_attach_list: added text/plain [7]
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5760, *ldata = 0x11ff180
> [2017-09-29 18:01:21] parse_attach_list: skipping text/x-vcard
> [2017-09-29 18:01:21] parse_attach_list: skipping application/pgp.*
> [2017-09-29 18:01:21] parse_attach_list: skipping application/x-pkcs7-.*
> [2017-09-29 18:01:21] parse_attach_list: added message/external-body [4]
> [2017-09-29 18:01:21] parse_attach_list: ldata = 0x6e5750, *ldata = (nil)
> [2017-09-29 18:01:21] parse_attach_list: added message/external-body [4]
> [2017-09-29 18:01:21] Reading configuration file '/usr/lib/mutt/source-muttrc.d|'.
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/charset.rc'.
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/colors.rc'.
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 1
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 2
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 3
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 4
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 5
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 6
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 7
> [2017-09-29 18:01:21] mutt_alloc_color(): Color pairs used so far: 8
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/compressed-folders.rc'.
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/gpg.rc'.
> [2017-09-29 18:01:21] Reading configuration file '/etc/Muttrc.d/smime.rc'.
> [2017-09-29 18:01:22] Reading configuration file '/home/dafna/.muttrc'.
> [2017-09-29 18:01:22] Using default IMAP port 143
> [2017-09-29 18:01:22] Using default IMAPS port 993
> [2017-09-29 18:01:22] Reading imaps://imap.gmail.com:993/INBOX...
> [2017-09-29 18:01:22] Looking up imap.gmail.com...
> [2017-09-29 18:01:22] Connecting to imap.gmail.com...
> [2017-09-29 18:01:22] SSL/TLS connection using TLS1.2 (ECDHE-RSA/AES-128-GCM/AEAD)
> [2017-09-29 18:01:23] Connected to imap.gmail.com:993 on fd=5
> [2017-09-29 18:01:23] imap_cmd_step: grew buffer to 512 bytes
> [2017-09-29 18:01:23] 5< * OK Gimap ready for requests from 87.70.155.11 4mb36680424wrk
> [2017-09-29 18:01:23] IMAP queue drained
> [2017-09-29 18:01:23] 5> a0000 CAPABILITY
> [2017-09-29 18:01:23] 5< * CAPABILITY IMAP4rev1 UNSELECT IDLE NAMESPACE QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=XOAUTH2 AUTH=PLAIN AUTH=PLAIN-CLIENTTOKEN AUTH=OAUTHBEARER AUTH=XOAUTH
> [2017-09-29 18:01:23] Handling CAPABILITY
> [2017-09-29 18:01:23] 5< a0000 OK Thats all she wrote! 4mb36680424wrk
> [2017-09-29 18:01:23] IMAP queue drained
> [2017-09-29 18:01:23] imap_authenticate: Using any available method.
> [2017-09-29 18:01:23] SASL local ip: 192.168.1.3;49818, remote ip:64.233.184.109;993
> [2017-09-29 18:01:23] External SSF: 128
> [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting authname for imap.gmail.com:993
> [2017-09-29 18:01:23] mutt_sasl_cb_authname: getting user for imap.gmail.com:993
> [2017-09-29 18:01:23] mutt_sasl_cb_pass: getting password for dafna3@gmail.com@imap.gmail.com:993
> [2017-09-29 18:01:51] Authenticating (PLAIN)...
> [2017-09-29 18:01:51] 5> a0001 AUTHENTICATE PLAIN ZGFmbmEzQGdtYWlsLmNvbQBkYWZuYTNAZ21haWwuY29tAHptb3JhYml0YW4=
> [2017-09-29 18:01:52] 5< * NO [WEBALERT https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbugOQ198DOy7Zb1MDieiIPEzFKc8] Web login required.
> [2017-09-29 18:01:52] Handling untagged NO
> [2017-09-29 18:01:52] [WEBALERT https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbugOQ198DOy7Zb1MDieiIPEzFKc1njxh1OAIMIwnM_HFpfrZrE8Cs8jIZ8] Web login required.
> [2017-09-29 18:01:54] 5< a0001 NO [ALERT] Please log in via your web browser: https://support.google.com/mail/accounts/answer/78754 (Failure)
> [2017-09-29 18:01:54] IMAP queue drained
> [2017-09-29 18:01:54] imap_auth_sasl: IMAP4rev1 UNSELECT IDLE NAMESPACE QUOTA ID XLIST CHILDREN X-GM-EXT-1 XYZZY SASL-IR AUTH=XOAUTH2 AUTH=PLAIN AUTH=PLAIN-CLIENTTOKEN AUTH=OAUTHBEARER AUTH=XOAUTH failed
> [2017-09-29 18:01:54] Logging in...
> [2017-09-29 18:01:54] 5> a0002 LOGIN "dafna3@gmail.com" <my password was here >
> [2017-09-29 18:01:54] 5< * NO [WEBALERT https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ] Web login required.
> [2017-09-29 18:01:54] Handling untagged NO
> [2017-09-29 18:01:54] [WEBALERT https://accounts.google.com/signin/continue?sarp=1&scc=1&plt=AKgnsbtsuqTeiA_IDHsoIa3Utf_H1khBtwHGPHU6HQDMyeG3LyUNEoFXbnca04wxTgx9HN5kLUpQ9nLYddqY70JeOESSjlwXKknggYPTII1U_XV7] Web login required.
> [2017-09-29 18:01:56] 5< a0002 NO [ALERT] Please log in via your web browser: https://support.google.com/mail/accounts/answer/78754 (Failure)


Hi Dafna,

Yes they haven't made gmail easy for the outside IMAP world. Well it
used to be easy but google is evolving as it does...

So you need to make sure you check everything there:
https://support.google.com/mail/accounts/answer/78754

Some outstanding non obvious points from that page:

1) Make sure you enabled IMAP on gmail parameters
2) Enable access to non secured apps (google account parameters)
3) Check  https://www.google.com/ajccounts/DisplayUnlockCaptcha

It's also possible that none of this will help. For exemple IMAP login
on my account has stopped working suddenly several days ago.
Impossible to know why. So I'm stuck with overkill email clients
supporting OAUTH2. You should have better luck though, my case seems
to be isolated as far as I know.

