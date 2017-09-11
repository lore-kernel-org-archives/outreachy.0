X-GM-THRID: 6463987902323884032
X-Received: by 10.98.163.197 with SMTP id q66mr6636704pfl.14.1505150119780;
        Mon, 11 Sep 2017 10:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.150 with SMTP id p144ls1273586itc.2.canary-gmail; Mon,
 11 Sep 2017 10:15:08 -0700 (PDT)
X-Received: by 10.107.141.11 with SMTP id p11mr7462973iod.124.1505150108014;
        Mon, 11 Sep 2017 10:15:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505150107; cv=none;
        d=google.com; s=arc-20160816;
        b=hgQKHEwxXP69jVcUm+LxWC2IcQztgNPEyVlMQhGkKWhZdYkyaEi+fnSKFsBfpdvlpc
         +gLhWDkso4P9oqRAPa6TuhRkqsNh/A5r68/RNNtD5kvRV2Q2l6U9EtU/ilq9XANyLqz7
         p9sGUjgkNWd1+U+AnTqk62uUciItcM0WznJtjdvBneXcxWMaDu0PkTiKuf02Fj3U+PyZ
         SznjpZyhKVPgL9FGxwrhtxyZoRMB4ulDZh2pCfI4YVxb7R9bvg/sSVWrunMMMACgdABr
         jJINTV4z3z8oRdcXd2ay4eAOLZyCou+K4sXNw/vGN9B95o5jCGLoJPx/wKT13tz9/Sq+
         vN9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=B6hV7EntlilD37/sZFE30woir9AM5hr6NC/mY3DgU2o=;
        b=djNukebmHnrSt+3IncDqay8EQOusnoXfpMi29gykjAr/DvRpXJf13RBp00iLhsVB00
         dosZS9S3YEpc3RCqL7IAHzX5M/6m1NKloefAK66TvNOtzegD5sQVNuVdMWiEJnxBd/PO
         pg+Nf6Lud+rE6I4vcX+tZlppxG3lcToIX8+2v1Yy8zrSml5YNne/0O0hodCAoTwNqLBE
         Ehcq8YWuEC34qiM4Tq0mWbzdrgoUTsyDtjmk/+4ufEzpYYYW28IqNnq3+rlRk+XJj33Y
         xaP0/i3c0TjD5qoNG1nTBrhOuhrR06dUPqeqNt3zzv86Y3uvO2jHz/EF/neUsSWnq6mp
         FF5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnSCoco2;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id k76si933952pfb.5.2017.09.11.10.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dnSCoco2;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so4925134pfe.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 10:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=B6hV7EntlilD37/sZFE30woir9AM5hr6NC/mY3DgU2o=;
        b=dnSCoco2jAkz/5pvOLq4gH9uccMXemZkqSQJZX1+csOzs0DGsSAfYbqQuV5BVjFbQH
         BbsV/8gPY/XEcoC+8PhmMsWsl1e2Xya515gh2Y6OvkOLRYGAkUqCBmAS8s2z/MINXysL
         qYQ8r1tUucgQRgxz4RUq6eXCIoaCE3Q1YQ2JxT+2ABUDERNNuJFTiGXqQSuV43rhljjF
         9tUpDqx/pXniOh8broA90IIzTAcOwu9oWDaMwznU0MYQR4AXQDXhniHfJPbsGmbTy4js
         0lXNtqCfElNoVH43RTNcMeIWQgnXp4rqrrYamRkEsJNKUFWuFInMkiuTI5XSfjBVdUrp
         lJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=B6hV7EntlilD37/sZFE30woir9AM5hr6NC/mY3DgU2o=;
        b=r1VdlRrmSuaroiul6EhDAM0rUFLlPkZKHABWt0yDEoi8ZE29OXRnOw9oaoo7yduy0S
         zOCOtcxVeE3UvNoNbziJ8fFO8i9hJ+XU3ynCYhh8Ro/C/vWd2WiYKBygukz+0h9GJP0T
         XxqN4YvhQpsKtE3CKqFvUnM1/p6Xd/xdvaAjUqrcY0f8TJxUQh27HYfXkhbw8KygadFP
         LpEDemqQIL2pP8W5Pd+l59zLkjX/Pz2zi5/YwMG6B6ioUNf0zf/lB0Vsc7zZIJkiw+6f
         Lih/uOGOmU7WgdwFN2t6xjp5RsgHqza5+g/As/XRT8Mnz5BnaKshjD6J0Dgl7FuetHWP
         re4Q==
X-Gm-Message-State: AHPjjUhmm/X68vGpNTMDE4pSnjkcdV5W3FCZ4UQ6BlQepziA59aMTaoB
	likze2crHNHy5MBn0Os=
X-Google-Smtp-Source: ADKCNb5wJcO6Zj5aEihr4ZlgSG2/3IfhiIYWBFiuUBqvEAywPDUxwB3xXhFeab8bDJQfZz8Ku+keLw==
X-Received: by 10.99.60.77 with SMTP id i13mr12557251pgn.114.1505150107709;
        Mon, 11 Sep 2017 10:15:07 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([103.231.132.5])
        by smtp.gmail.com with ESMTPSA id 77sm16433552pfz.47.2017.09.11.10.15.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 10:15:06 -0700 (PDT)
Date: Mon, 11 Sep 2017 22:45:01 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vc04_services: bcm2835-camera: Add blank line
 after declarations
Message-ID: <20170911171458.GA28700@meghana-HP-Pavilion-Notebook>
References: <20170910033412.GA26296@meghana-HP-Pavilion-Notebook>
 <20170911162847.GA26750@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170911162847.GA26750@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Sep 11, 2017 at 09:28:47AM -0700, Greg Kroah-Hartman wrote:
> On Sun, Sep 10, 2017 at 09:04:12AM +0530, Meghana Madhyastha wrote:
> > This patch adds a blank line after declarations. This enhances readability.
> > 
> > Problem found using checkpatch.
> > 
> > Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> > ---
> >  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > index 4360db6..7a7b00e 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > @@ -1982,6 +1982,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
> >  	struct vchiq_mmal_instance *instance;
> >  	static VCHI_CONNECTION_T *vchi_connection;
> >  	static VCHI_INSTANCE_T vchi_instance;
> > +
> >  	SERVICE_CREATION_T params = {
> >  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> >  		.service_id		= VC_MMAL_SERVER_NAME,
> 
> checkpatch is wrong here :(
Sorry about that. So should this be dropped altogether or should I continue removing the typedefs?

