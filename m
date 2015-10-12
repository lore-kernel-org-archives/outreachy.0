X-GM-THRID: 6204103069755506688
X-Received: by 10.50.79.234 with SMTP id m10mr11837247igx.5.1444644177387;
        Mon, 12 Oct 2015 03:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.29 with SMTP id k29ls1415200iod.101.gmail; Mon, 12 Oct
 2015 03:02:57 -0700 (PDT)
X-Received: by 10.50.18.50 with SMTP id t18mr11896411igd.8.1444644177132;
        Mon, 12 Oct 2015 03:02:57 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id uv4si1760172pac.0.2015.10.12.03.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 03:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so150726888pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 03:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KGaxaJBWjSxWBCYuS82tg/cpgxGl+XLH2de7ZEKm27Y=;
        b=TllAfrF2mQ25cp7Q+IFyWUt/KAbxGAaBJYgfPnX0M1UNCp0ui47hV3Mvd8mADlr6OG
         S5KewlPsd6kKbwBfVug/nybyvugRj58Tp3w8hHnU9T+VHDRwD2WBvKNFkjtSkjOalwBR
         I5oKngdk9pskDEUrATWwQJUs+l84RMfoCjPWVOhFWNhHDCCItT8Lphm9aTLl3z4sAxeT
         Z/z0Zgknh11zsxqh2JB8ZqXCfILAuJUmKknqutjbxepALMcBw+/vgRF1H2S6aN5c28Ej
         9S04il338yYtG0eW6yCvMFfJiXhQDyX0it6G4ab5Q1cXgRdOD8P7fozdx08LrE5IvbjT
         /15g==
X-Received: by 10.68.139.194 with SMTP id ra2mr33963239pbb.6.1444644176906;
        Mon, 12 Oct 2015 03:02:56 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id db8sm17476810pad.43.2015.10.12.03.02.55
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 03:02:56 -0700 (PDT)
Date: Mon, 12 Oct 2015 15:32:51 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8192u: Add
 paranthesis to complex macro
Message-ID: <20151012100251.GC13596@sudip-pc>
References: <cover.1444500823.git.cristina.moraru09@gmail.com>
 <410805a906dc0db0f9477ee2429de100a1a0e77d.1444500823.git.cristina.moraru09@gmail.com>
 <alpine.DEB.2.02.1510102131170.2053@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1510102131170.2053@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sat, Oct 10, 2015 at 09:32:22PM +0200, Julia Lawall wrote:
> On Sat, 10 Oct 2015, Cristina Moraru wrote:
> 
> > Fix 'Macros with complex values should be enclosed in parentheses'
> > checkpatch warning
> > 
> > Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > index c639aac..2c0060c 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> > @@ -1513,7 +1513,7 @@ static int ieee80211_parse_qos_info_param_IE(struct ieee80211_info_element
> >  }
> >  
> >  #ifdef CONFIG_IEEE80211_DEBUG
> > -#define MFIE_STRING(x) case MFIE_TYPE_ ##x: return #x
> > +#define MFIE_STRING(x) (case MFIE_TYPE_ ##x: return #x)
> 
> This will not work.  One can't put parentheses around statements.  Did the 
> code compile?  Perhaps the macro is never used?  Or probably 
> CONFIG_IEEE80211_DEBUG was not turned on.

This breaks the build.

regards
sudip

