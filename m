X-GM-THRID: 10320556851200
X-Received: by 10.194.236.196 with SMTP id uw4mr10882345wjc.5.1427889525514;
        Wed, 01 Apr 2015 04:58:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.226 with SMTP id m2ls63629laa.71.gmail; Wed, 01 Apr 2015
 04:58:44 -0700 (PDT)
X-Received: by 10.112.235.70 with SMTP id uk6mr6665772lbc.24.1427889524987;
        Wed, 01 Apr 2015 04:58:44 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id i8si107398wif.1.2015.04.01.04.58.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:58:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id m6so50092177wgd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=oPhdHqPq26o+ROrc87N+ooLEPZ9m/DY9mAL80qrtoiU=;
        b=oAN+PpCdsItOaRnwvSvtRjHA/qw0S4jg6nISxrkCaOqL41Li6v0h0I91Pnx8ixltUv
         3Wj/U21hdkaaIobILXg3ZSGKfS6ucjuxh6mbDm4ehmSzUK1J95skO09SWvy1oooYdW1C
         sXvpZrFJkVO9h1J6PZ0sv7Ql6ZAj75RKGmkTmlsd3eu40Bd7iw1uz8qc8HVZmekyyeuy
         fnPzzk0L34ELrE6MzHWUa0+L1fZV3KbUAZJj9ulitS1A0wzlSZCim2E7Q56B/OJ+PwPG
         XinfbBEhipWu2Vj/PjU7pejwGz5XHPMNwzfhLb+Dd9HtXhgFgxxLfMrGrvPSZoKnK+5c
         hYDQ==
X-Received: by 10.194.223.37 with SMTP id qr5mr5879385wjc.11.1427889524839;
        Wed, 01 Apr 2015 04:58:44 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [10.3.4.176] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ha10sm2361672wjc.37.2015.04.01.04.58.43
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 04:58:44 -0700 (PDT)
Message-ID: <1427889464.6503.2.camel@Inspiron>
Subject: Re: [PATCH 2/2] iio: light: ltr501: Powerdown device on error
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org"
	 <linux-iio@vger.kernel.org>
Date: Wed, 01 Apr 2015 14:57:44 +0300
In-Reply-To: <CAEnQRZAVb_70+Fyj+PiXLQ3ShZTomafE3ZEnCFUEkhQnb8ERYg@mail.gmail.com>
References: <cover.1427797741.git.cristina.opriceana@gmail.com>
	 <1abedb2004323a23e8dd120abf761f3488c8e9f6.1427797741.git.cristina.opriceana@gmail.com>
	 <CAEnQRZAVb_70+Fyj+PiXLQ3ShZTomafE3ZEnCFUEkhQnb8ERYg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mi, 2015-04-01 at 14:46 +0300, Daniel Baluta wrote:
> On Wed, Apr 1, 2015 at 2:01 PM, Cristina Opriceana
> <cristina.opriceana@gmail.com> wrote:
> > Power down device when an error occurs  in order to avoid wasting
> > power. Also move powerdown function up to be seen by the new call.
> >
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> > ---
> >  drivers/iio/light/ltr501.c | 18 ++++++++++--------
> >  1 file changed, 10 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
> > index 62b7072..29ca4b8 100644
> > --- a/drivers/iio/light/ltr501.c
> > +++ b/drivers/iio/light/ltr501.c
> > @@ -333,6 +333,13 @@ static int ltr501_init(struct ltr501_data *data)
> >                 data->ps_contr);
> >  }
> >
> > +static int ltr501_powerdown(struct ltr501_data *data)
> > +{
> > +       return ltr501_write_contr(data->client,
> > +               data->als_contr & ~LTR501_CONTR_ACTIVE,
> > +               data->ps_contr & ~LTR501_CONTR_ACTIVE);
> > +}
> > +

> Don't forget
> to mention this in the commit message. When running checkpatch.pl
> please use --strict parameter.

Okay, I'll make a v2. Ignore my previous question.

Thanks,
Cristina

> thanks,
> Daniel.



