X-GM-THRID: 6138556841984
X-Received: by 10.112.162.135 with SMTP id ya7mr4537741lbb.14.1425388283714;
        Tue, 03 Mar 2015 05:11:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.100 with SMTP id hb4ls794622wib.22.canary; Tue, 03 Mar
 2015 05:11:23 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr247045wiy.6.1425388283544;
        Tue, 03 Mar 2015 05:11:23 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x230.google.com (mail-we0-x230.google.com. [2a00:1450:400c:c03::230])
        by gmr-mx.google.com with ESMTPS id el6si102957wib.2.2015.03.03.05.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 05:11:23 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) client-ip=2a00:1450:400c:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so39729023wes.10
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 05:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pEVnLb0/EBoWlhM/HS0rcIgjzH1FZAEn9LIom9IFEJA=;
        b=TRHMU3dS+9M559/U0nzUH+SNQpdyo4PKwj3Bcfai6/IKYueDLKVBguLCOpqGqSWsp/
         kVEuBRuDmRvQlWzHbgG2kfMlXLXgwnZR1/ykkxof0hmZ5zvPl3lRBWqbLjPgVHJKlK3k
         SkXeyBPrVHS8ttmuxkzUD+KNUKgBK5Mpdg3RAxeolQdA1onygUUef0RGDF2oKCa5o/6h
         NTXRMM/OHuSLYhZbzNzPtsxyN7GL4K7ViVll9mKuDaryZ3re+yyXqU5o/lLE41TficlV
         ZwliHZWfBIoPrsB870ckJapER3vSlwYmmuGgU/kcSQzPalE0JKWcULJRhtHacTAq82zT
         54gQ==
X-Received: by 10.194.20.67 with SMTP id l3mr68147398wje.94.1425388283475;
        Tue, 03 Mar 2015 05:11:23 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.99])
        by mx.google.com with ESMTPSA id lg18sm20498879wic.23.2015.03.03.05.11.21
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 05:11:22 -0800 (PST)
Date: Tue, 3 Mar 2015 15:11:13 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH v3] staging: iio: meter: add check on
 return variables
Message-ID: <20150303131113.GD24979@waves>
References: <20150303112705.GA11879@waves>
 <alpine.DEB.2.10.1503030701320.2723@hadrien>
 <3934270.TZNMLNhXSS@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3934270.TZNMLNhXSS@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 01:13:09PM +0100, Arnd Bergmann wrote:
> On Tuesday 03 March 2015 07:01:47 Julia Lawall wrote:
> > > -     ade7758_spi_read_reg_8(dev,
> > > -                     ADE7758_OPMODE,
> > > -                     &val);
> > > +     ret = ade7758_spi_read_reg_8(dev, ADE7758_OPMODE, &val);
> > > +     if (ret < 0) {
> > > +             dev_err(dev, "failed to read from device");
> > > +             goto error_ret;
> > > +     }
> > 
> 
> The ade7758_spi_read_reg_8 already prints an error message, I don't
> think we want to see two messages about the same error.
>
good to know. Thanks Arnd!
> 	Arnd

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

