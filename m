X-GM-THRID: 6465329040098066432
X-Received: by 10.202.172.23 with SMTP id v23mr116990oie.81.1505326721016;
        Wed, 13 Sep 2017 11:18:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.189.2 with SMTP id x2ls2266099ite.19.canary-gmail; Wed, 13
 Sep 2017 11:18:40 -0700 (PDT)
X-Received: by 10.98.26.216 with SMTP id a207mr9871818pfa.8.1505326720188;
        Wed, 13 Sep 2017 11:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505326720; cv=none;
        d=google.com; s=arc-20160816;
        b=PjthzWj8cWmGKoollMq783JtAIYB7RbTcvcen16aMvBzHOJ2mYR03FlWoEPRdTKGrK
         NQTQoydAnKqRgDJE45xLiv7MVwsAWGo3HVWuoP/bSYGVtM0E6qGJdbHWwUcolPCRIJmO
         DMcR3691OeT5oz6EfRItwq5jONlLtLawGKR3BGoPAWPlK/H1MWcg45ecSvlN5H834r3q
         j06D1D4SMKXTB3GgBJ3/7m7oV/vsapXFEX7DvZbiUrHHi6wUKoZdpEden1o6jAgQC8tt
         RIf938aJBwQda+bRVAQSk/wp6CYfSCbTqe7o2HNe2miXILPA2jcF5fSkGKisfXzljIW1
         DgWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:sender
         :mime-version:dkim-signature:arc-authentication-results;
        bh=J4H3LBB1usTj7P5B6J/9fQuBS31bfbshgGeAabN3wOw=;
        b=BNZr8MtAsBYyQzlBJmgINn2v2zRFxCMMPtmREkP5nWIuH9bjRLQd0ewvyjb7epTS8S
         HYAq8SAES7Z/KDvR6S7fVfJpsiSdDoWJL94oDJP0Cw9q2ARWTh2bFzVizahEzdl7RGEI
         sPhWH5+avWEoKrUi/A0fjNc66qfpN9YmuDjsHZ+Ia8B8BFKdut4gv0MYEBCJZI+DgbuY
         OHLag2+1tmoqllGLzJwW9WEQE9JaMaH3b6TRgD/ev7vNQrPkd1Vwsg0663Bf0z6Ap5XO
         mdgaVlEMJPmxkr47lH2sUB1R+UHRLMF5UVnW4WIyRJNdNvrymFVOfjtkXWZBeLkihmWz
         v6Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Gl++8dZt;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Return-Path: <daniel.vetter@ffwll.ch>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id p204si1270289ywg.12.2017.09.13.11.18.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 11:18:40 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Gl++8dZt;
       spf=neutral (google.com: 2607:f8b0:4001:c0b::242 is neither permitted nor denied by best guess record for domain of daniel.vetter@ffwll.ch) smtp.mailfrom=daniel.vetter@ffwll.ch
Received: by mail-it0-x242.google.com with SMTP id d6so754352itc.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 11:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=J4H3LBB1usTj7P5B6J/9fQuBS31bfbshgGeAabN3wOw=;
        b=Gl++8dZtageOTGjPY4HYPvb3HdW7rttKFiXCBSgkqCfptjjC5kAxau+KIp3m177KqR
         61uZN6f2S5gcKmWDopY4IgbQi05gFPW5N2UjCkBShRvtIjwuSBEicI+SXq6BUvGJ/r5p
         x2ty1qC41ywn710kAyynMuqPhAkuHov4H0s5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=J4H3LBB1usTj7P5B6J/9fQuBS31bfbshgGeAabN3wOw=;
        b=FNnjWVJbzoS9QW305Avrcphqhr2EQyCfWCVdcz0q1Dq1b0nobMo5hkmty8BI0vSeP1
         mA82kAMlKwJLIz/PpCgEuTxu7nAFXJHLalvOVKn9bbpCjKwyQXbKtaIHMekq9CnHzto+
         ufSoM+9QRjuEKrowQOFswpHJaJ43moMiIq+THOzLmxXnFHrtGBVWtfgyIan45uL+Y+01
         L+VbpwZg4e1G59tJGber0FlDnJFvFti8pb/AJabLwWeiDg4uH74w+gTyHUAjoFQZ00gE
         f8OTNpv24g63h9m+e07SQPLB6oLAgiy3kGWX1J8fPoHOWF8UvrvnsCa7C1Q4R4p/oeIw
         DDhA==
X-Gm-Message-State: AHPjjUiKIOSQwjGdutyIrpUWb7rahpXZydfuhCNVzU8kLbaaydgksChu
	MFFTvQ69y4TtfhBZYZX10JrB75PR0JnJCw6ZSW7nJg==
X-Google-Smtp-Source: AOwi7QAotfMEKT+MqjUK1Yc7UOloL69dZfISmIxWxO+jcfjKEW1O79FUL18QoxRWT0yfBDbuLyvUf7TjaSm3+E9jZA4=
X-Received: by 10.36.167.6 with SMTP id a6mr5734351itf.23.1505326719666; Wed,
 13 Sep 2017 11:18:39 -0700 (PDT)
MIME-Version: 1.0
Sender: daniel.vetter@ffwll.ch
Received: by 10.79.196.218 with HTTP; Wed, 13 Sep 2017 11:18:38 -0700 (PDT)
X-Originating-IP: [134.134.139.75]
In-Reply-To: <20170912200057.GB14704@Haneen>
References: <20170912200057.GB14704@Haneen>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 13 Sep 2017 20:18:38 +0200
X-Google-Sender-Auth: u0YtzwkFk8agFYbtZlEQVpxVj0Y
Message-ID: <CAKMK7uFpwDMDT1ZCfonG4iroaFmLgDXYarvci+CAY8QxNQk+Lw@mail.gmail.com>
Subject: Re: [Outreachy] Regarding dri-devel todo list
To: Haneen Mohammed <hamohammed.sa@gmail.com>, Sean Paul <seanpaul@chromium.org>, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

Hi,

Welcome in the gpu world!

Also adding Sean Paul, and the outreachy-kernel mailing list since
probably others have the same question.

On your questions:
- Probably best to get a few patches in for drivers/staging first.
- If you want to do checkpatch patches in drivers/gpu, those are
welcome, but please coordinate with us (Sean and me) first, especially
when it's for one of the drivers. In general, we do take such patches,
but dri-devel can probably not cope with the massive storm of patches
the outreachy application period creates, so we need to coordinate
this a bit :-)
- About the todo of gpu specific tasks: We're updating it right now,
so again pls check with Sean & me.

For your specific question: Probably best if you do an example patch
(with just one case converted) or chat on irc. But this week and the
next Sean and me are at conferences, so not much time. But like I
said, probably better to do a few simple patches first (if you haven't
done so).

Thanks, Daniel


On Tue, Sep 12, 2017 at 10:00 PM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> Dear Daniel,
>
> This is Haneen, I am an outreachy applicant. I am very interested in
> getting involved with the dri-devel subsystem.
>
> I have two questions regarding the todo list listed.
> First, since we are used to only fix issues in the drivers/staging folder,
> I want to confirm if we are expected to modify the files in the drivers/gpu folder or not.
> Second, for the "switch from reference/unreference to get/put" task, for
> example, would changing the "reference_clock" to "get_clock" be one
> instance of this task?
>
> Thank you!
> Haneen



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

