X-GM-THRID: 6202235040430030848
X-Received: by 10.50.3.97 with SMTP id b1mr16995520igb.3.1444152730503;
        Tue, 06 Oct 2015 10:32:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.70.3 with SMTP id i3ls913924obu.78.gmail; Tue, 06 Oct 2015
 10:32:10 -0700 (PDT)
X-Received: by 10.182.221.196 with SMTP id qg4mr31054733obc.23.1444152730036;
        Tue, 06 Oct 2015 10:32:10 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id w5si4142071pbt.1.2015.10.06.10.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 10:32:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hy16so76015416pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 10:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=hp128U5fVvP8JbW+hFTWg2XXQhgCScD8yocVa+2jld0=;
        b=sDhC7qiDYar2ONH5PMFs3MU1X6zR7SG0Ot6exRamu8ufbwxyyJHSinGY0IkL8OlfXI
         u4rFdKAHBVmuaDxGG3pqWeGPiaZ+NVmtSLNGU7HiTy7vRpaEVgeZsEUoohwV14QXtKjo
         k6dLU+Q3/NwQxobu9d6WxQxhxJO1BuQL33TBRQ4FugqbCZ0fGz9n23VLRN94UJ1ZGARz
         DYPC7X8q88ldjYnQRyL/T+sRcBNZJbTEDXoIlU+38Mw86KSesHnNJqhsgK5ZndxKhLKP
         eCf1Bbj86E2D0umsr3ADJHCqpQwKMtrUFkxDjHx5KU+NnBELVObXO45ifvXuUWqVMIMf
         vPSQ==
X-Received: by 10.66.189.69 with SMTP id gg5mr49270859pac.28.1444152729901;
        Tue, 06 Oct 2015 10:32:09 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id kh7sm34572272pbc.93.2015.10.06.10.32.09
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 10:32:09 -0700 (PDT)
Date: Tue, 6 Oct 2015 10:32:08 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test
 warnings
Message-ID: <20151006173208.GA2860@Ubuntu-D830>
References: <20151005183935.GA3350@Ubuntu-D830>
 <5250385.UVr7jy50Xn@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5250385.UVr7jy50Xn@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Oct 06, 2015 at 09:53:46AM +0200, Arnd Bergmann wrote:
> On Monday 05 October 2015 11:39:35 Alison Schofield wrote:
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -140,7 +140,7 @@ static inline void handle_pairwise_key(struct sta_info *psta,
> >  static inline void handle_group_key(struct ieee_param *param,
> >                                     struct _adapter *padapter)
> >  {
> > -       if (0 < param->u.crypt.idx &&
> > +       if (param->u.crypt.idx > 0 &&
> >             param->u.crypt.idx < 3) {
> >                 /* group key idx is 1 or 2 */
> >                 memcpy(padapter->securitypriv.XGrpKey[param->u.crypt.
> 
> this part is good.
> 
> 
> > @@ -957,7 +957,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
> >         if (IS_ERR(ext))
> >                 return PTR_ERR(ext);
> >  
> > -       if (0 == strcasecmp(ext, "RSSI")) {
> > +       if (strcasecmp(ext, "RSSI") == 0) {
> >                 /*Return received signal strength indicator in -db for */
> >                 /* current AP */
> >                 /*<ssid> Rssi xx */
> 
> while this and most of the other comparisons below can be further
> improved by removing the "== 0" part. You can write this as
> 
> 	if (!strcasecmp(ext, "RSSI")) {
> 
> 
> 	Arnd

Thanks & understood. v2 in the works with ! and commit msg changes.

alison


