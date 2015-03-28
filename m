X-GM-THRID: 9152848986112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,56524335c2ab2304
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.246.97 with SMTP id xv1mr18838391obc.25.1427548242083;
        Sat, 28 Mar 2015 06:10:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.84 with SMTP id 78ls1608147qgm.39.gmail; Sat, 28 Mar
 2015 06:10:41 -0700 (PDT)
X-Received: by 10.236.29.146 with SMTP id i18mr6380709yha.58.1427548241904;
        Sat, 28 Mar 2015 06:10:41 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id kt5si850919qcb.3.2015.03.28.06.10.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 06:10:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id 60so136858369qgf.3
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 06:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2SNIfADrPRuM3Hf3XQvYIecrSV/AY3c3QYRkf9CbEpY=;
        b=J4pG6Izdm4cgO95PmHgI4G8x1NCVD67tirgS0bw8MzAHyZrZvlhPlXgpwDKdxomlAQ
         GXbEZNbore6R9b1VyorZDMZgiL2bgGy8YFRDVmqfihvEYxiiNCrhZ03N4AuAohMNHA1X
         7OztsMEOatgvmrlZfIMKAgVpONNsbHZ7hDC/LWn6sR87jsvs897jbnx+tLAm6AK/TmvL
         2WTC5AKiIkErahibZsj7BE50zYR1mcTQFLUfmQuZ+I4TBIcHwZLQrwlhrRaYMUepvPok
         DrnI2tOSI729IswQ3A1YBhaceyRVIg/Z23L1dhd98LU41axXXaGYgpQRSPuVWWQWarzj
         Srsw==
MIME-Version: 1.0
X-Received: by 10.55.50.203 with SMTP id y194mr50281592qky.8.1427548241827;
 Sat, 28 Mar 2015 06:10:41 -0700 (PDT)
Received: by 10.140.39.11 with HTTP; Sat, 28 Mar 2015 06:10:41 -0700 (PDT)
In-Reply-To: <55169AD2.3080400@kernel.org>
References: <cover.1426981797.git.cristina.opriceana@gmail.com>
	<ac0d5b2399b00fe9763c7844c726ffad0a65df99.1426981797.git.cristina.opriceana@gmail.com>
	<55169AD2.3080400@kernel.org>
Date: Sat, 28 Mar 2015 15:10:41 +0200
Message-ID: <CAFA9rWNH8nwSQv75eQMOdxNGgF6bEGOjDCLw5pvdoALUjkh2xA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] Staging: iio: Place driver in sleep mode on error
From: Cristina Georgiana Opriceana <cristina.opriceana@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald <pmeerw@pmeerw.net>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 28, 2015 at 2:13 PM, Jonathan Cameron <jic23@kernel.org> wrote:
> On 22/03/15 00:26, Cristina Opriceana wrote:
>> Put device in sleep mode if an error is encountered after
>> initialization in order to avoid wasting power.
> The patch title should definitely include the name of the driver in question!
> Otherwise you'll not generally get reviews from the relevant people.
> Staging:iio:hmc5843 Place driver in sleep mode on error during probe.
>
> Also try to cc relevant people and the relevant list.
> See MAINTAINERS and you'll notice we have both a list and a
> set of designated reviewers who would like to be cc'd on IIO patches.

Okay, thanks for your feedback, I'll keep that in mind for the future work
because Greg has already merged this on his staging-next branch.

Thanks,
Cristina

