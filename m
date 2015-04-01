X-GM-THRID: 10320556851200
X-Received: by 10.194.221.65 with SMTP id qc1mr10861650wjc.7.1427889065411;
        Wed, 01 Apr 2015 04:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.168 with SMTP id fh8ls52281wib.33.gmail; Wed, 01 Apr
 2015 04:51:05 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr1795481wix.4.1427889065021;
        Wed, 01 Apr 2015 04:51:05 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id sf8si101167wic.2.2015.04.01.04.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:51:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id e14so49194294wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=19SjVzaK/l0S3O53/66JGID4ifaGEU8ZGvM6vQI71MU=;
        b=nDGXVxtaO3pi5QQLgm43ZJsjhP3vXTZnS2XMK0ETdhK/5HxjvwncnsiTlYBGp1+0/l
         js8pQJwrX0ehDLiWoByeUbt2sa5LU0aPZph1FBtlLM9QQbO7KQK/CC/eHXGzBMkEkhFx
         Kn1C/oSmkwTpeMRgAesBzTFPl4xZaF3JbT2GJmC2LEGMOH9gzkx1VN+7Im88tpUsR8kM
         0St3zGM27JWJhVFNFcorhHB0ANWcEcRJ0BHsaPYL2vI9LndnN7zxDtdzwsQ0AYkXT41c
         1emzO17QVFwLDUnXkBcI1MC1jhNTLx8BgZV6nkrnCMh8CKOE1pHvsFMKcGCc/VyLtmC+
         7moA==
X-Received: by 10.194.24.103 with SMTP id t7mr81723841wjf.15.1427889064900;
        Wed, 01 Apr 2015 04:51:04 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [10.3.4.176] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id m4sm2340124wjb.25.2015.04.01.04.51.03
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 04:51:04 -0700 (PDT)
Message-ID: <1427889004.6503.1.camel@Inspiron>
Subject: Re: [PATCH 2/2] iio: light: ltr501: Powerdown device on error
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org"
	 <linux-iio@vger.kernel.org>
Date: Wed, 01 Apr 2015 14:50:04 +0300
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
> 
> While at it please also fix the alignment for ltr501_write_contr
> parameters. Don't forget
> to mention this in the commit message. When running checkpatch.pl
> please use --strict parameter.
> 
> thanks,
> Daniel.

Another patch would be fine or should I send a v2?

Cristina



