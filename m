X-GM-THRID: 6529117174550757376
X-Received: by 10.46.50.8 with SMTP id y8mr1294460ljy.34.1520355916063;
        Tue, 06 Mar 2018 09:05:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.25.151 with SMTP id 23ls2018098ljz.5.gmail; Tue, 06 Mar
 2018 09:05:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELtOGRy7n5uDxrpfSNSGx1tqcDC8xJ5IEu1oj61GX6Ikq4Zl7nvGScDhuWU7YccNwBptY4bP
X-Received: by 10.46.20.11 with SMTP id u11mr1322285ljd.39.1520355914253;
        Tue, 06 Mar 2018 09:05:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520355914; cv=none;
        d=google.com; s=arc-20160816;
        b=MUmShjUEd/uGGWfTsQjypQ+Ur5QUGQUSZ+EjaVDaW2K/PlF/K6DRIEEVoXsBpoFpmR
         a4veqtQ3AojsNHpO66DW9t3KdyhB0DVRkm824zShoBkk5szBLakEy+bqvhI4gXeh3QBk
         NGOB7MomQJAdTmJ5UqeSVPQTDpOJml6mxTPTx0FLT9hwSzNp5lffIG4gAFd+GvWagKV5
         iuaePXBcOHGakmXZ07xhduEM5ArHXFYnpdObUSznOBgw91GS0dHY/0mEvFzp1wonDW8+
         5bYqdrkOLJUQRkWaYNKAKA+tGWOvUXTHAObuJgw+kX2NijiKcLvN8Et5wFBAZEl9nHUC
         Uxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=HhEdEVT3ZR/JMZDmCLEX2GXQXio1SijWC+5+/puAABs=;
        b=HXpGM1UfH1ymcrptSOqVbIz4pzJPTPbaq16yQwoN5LjkPjRAv2qN0zU5x05RdWwPkb
         8wz2FrQtrG4/LWQAgp1iC0cHKTr4YpV0Hrj427ySyVDgUVhy0sY/bJUnFrxT4xl+ql0O
         qNNBVgAXBBLOpunWO2b9Is5zl3TuXIB4+ltotK6UHGSxUIht0WOpfMDp6LTOu7+ddXlF
         JW+EBoRI1hq55G4lWr0z+H3v13BV9kLxv4YjeiNC01dgmugT8VL6ofJwat31eDUpy4dx
         RWMhV0PRliqbcJeopzvfxF9g5uypZazFySbQa72t2kvCG3TjQHyVx1ge9ZV8TiM6rBI3
         VhKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j4si621789lja.1.2018.03.06.09.05.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Mar 2018 09:05:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.236.200.248])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4740F1221;
	Tue,  6 Mar 2018 17:05:12 +0000 (UTC)
Date: Tue, 6 Mar 2018 09:03:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: media: cleanup
Message-ID: <20180306170354.GA19252@kroah.com>
References: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
 <alpine.DEB.2.20.1803041653350.2182@hadrien>
 <a814ccac-7afb-4ab0-a5b0-c6c4a4330485@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a814ccac-7afb-4ab0-a5b0-c6c4a4330485@googlegroups.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 06, 2018 at 08:18:27AM -0800, Arushi Singhal wrote:
> 
> 
> On Sunday, March 4, 2018 at 9:24:15 PM UTC+5:30, Julia Lawall wrote:
> >
> >
> >
> > On Sun, 4 Mar 2018, Arushi Singhal wrote: 
> >
> > > Spellcheck the comments. 
> > > Remove the repeated, consecutive words with single word. 
> >
> > For the series: 
> > Acked-by: Julia Lawall <julia....@lip6.fr <javascript:>> 
> >
> > But please look out for things to change in the code, not just in the 
> > comments. 
> >
> > Hello Greg
> 
> This is patch series is not  Added. 

I can not parse this :(

patches for drivers/staging/media/ go through the maintainer of that
tree, not me, if that is what you are concerned about.

thanks,

greg k-h

