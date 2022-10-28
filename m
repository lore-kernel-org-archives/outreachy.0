Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB03C122A9
	for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 20:49:25 +0000 (UTC)
Received: by mail-qv1-f48.google.com with SMTP id o8so4852614qvw.5
        for <outreachy@lists.linux.dev>; Fri, 28 Oct 2022 13:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p2jn1vXHHPMOyjmnIWlW/6FBOICpi1+moG55esSlyBY=;
        b=TobIVY2UUof+T0s/GJrPR2OEmz9Wkx/FXZvw27Z7B7J4Ir+CpkD0VglTdX5/zyaBN/
         ElQjYn71azJXnG56Dhz0SW5m5JuoaHe+8EY0HdPcPBqev+bv0z5P3Kcrxqx9rJbi6Cvy
         6g4fmgvkFVIGAHw5ZkHo3HPR4cnWIfU/+AKCs88T873rbkxS9mitSofGoOrBUO5nlRq0
         MXRWLR4XsIk1dKdTqpWPeXlnEmUwNzNYFfo+kBZOvzR/ybg2uhYFI9WhYRzT1yBKdQy1
         uSjfsKNQPUh4XreK5KSFYQB5V/W/qF8SYzY9STwahqtLs5s4o48ja046ZlI1jU/ea2mS
         V4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p2jn1vXHHPMOyjmnIWlW/6FBOICpi1+moG55esSlyBY=;
        b=HwIxyDCc7E4g8zW1MVETWibJqgvM/+jXq4PY5z9hYSV/HkfbwxSdPEiMRsM4yUOTdX
         2lwyFXRK1Lw7R6YtFc7Jekwdn7UqYXEczLywaixiWUbBPVsW+7H+AD9LRFBJV6r4XluP
         hVqbPcu1lbWkQVvYT4yr3bAewD0p/3jjxkVAAdVXqIxN1CLVOVvcEmhm5X7+jVfPyjPf
         BqR3fJjV+9mxnHQ3NXfhzuNFO1cCjVb3EqrGG+sJxF113YtxWPnZZ6v1FRXIEvR+33Gj
         BeVcB0hrqAmkg5juq/ykrjoza5NdouLs34onvWcqdkHdxWpoQXRuqk0EhjbzzLfKlhUU
         SXog==
X-Gm-Message-State: ACrzQf0WgbgD9EYhKzcF1/koROSeFjoZ4d7yneQ2liC/+Q6PycjP3U88
	+vpitc4zdYKtOLKJHSBiRdhHSn3no0rmY/K53yEf13llIn0X4rm4
X-Google-Smtp-Source: AMsMyM5pU2rMg65gb2tOqG0toERMSSrpQBLEqF5WKPOSYwU0x/CDzghELCkML6smsnRFG5GgxxvOnhnpEk6w6mAw3T0=
X-Received: by 2002:a0c:e547:0:b0:4bb:66d2:2d58 with SMTP id
 n7-20020a0ce547000000b004bb66d22d58mr1321056qvm.69.1666990164684; Fri, 28 Oct
 2022 13:49:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAHJEyKWCVPLYvGB=oeDoZWz+uaBMrn2JhGgjN6pvdhjggOmAiA@mail.gmail.com>
 <Y1wiBgPE7sFSVQTG@aschofie-mobl2> <CAHJEyKWwg-9Aca5MEpp2+R7xt1C9Je5ooodr4Ca=2xuN4_EkgA@mail.gmail.com>
 <CAHJEyKVyQUedZwhem+1XsGy=h1JOYgn0_74jk8V2YH5V7zLVaQ@mail.gmail.com> <Y1w++T3KudppVNkK@aschofie-mobl2>
In-Reply-To: <Y1w++T3KudppVNkK@aschofie-mobl2>
From: Tanju Brunostar <tanjubrunostar0@gmail.com>
Date: Fri, 28 Oct 2022 21:49:12 +0100
Message-ID: <CAHJEyKXCLyGqYVY5QMyOfsiOpDujMqfgvc5oCtrCRwpBCu=+hg@mail.gmail.com>
Subject: Re: Outreachy first patch wiki modification proposal
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 28, 2022 at 9:43 PM Alison Schofield
<alison.schofield@intel.com> wrote:
>
> On Fri, Oct 28, 2022 at 08:25:38PM +0100, Tanju Brunostar wrote:
> > On Fri, Oct 28, 2022 at 8:10 PM Tanju Brunostar
> > <tanjubrunostar0@gmail.com> wrote:
> > >
> > > On Fri, Oct 28, 2022 at 7:40 PM Alison Schofield
> > > <alison.schofield@intel.com> wrote:
> > > >
> > > > On Fri, Oct 28, 2022 at 07:23:47PM +0100, Tanju Brunostar wrote:
> > > > > After setting up my mutt with Gmail, I tested it by sending an email
> > > > > but it did not go through. After some research, I realized that Gmail
> > > > > no longer allows less secure apps. The way around this is to set up
> > > > > two step verification, then generate and use "App password". I would
> > > > > like to add this to the wiki, as this will save others from the
> > > > > additional work. Please let me know if I can proceed.
> > > >
> > > > Helpful tips are always appreciated.
> > > > Please post the actual edit here for review.
> > > >
> > > > Alison
> > > >
> > >
> > > My changes
> > > original: If your gmail account uses two-step verification, then you
> > > will need to generate and use App Password.
> > > modified: Next make sure two-step verification is enabled on your
> > > gmail account, then generate and use App Password.
> > >
> > > Tanju
> > link to the page: https://kernelnewbies.org/Outreachyfirstpatch#preview
>
> Sounds good. I expect you are going to go back in and delete
> the 'original' line.
>
> Thanks!
> >
>
done
