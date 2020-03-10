X-GM-THRID: 6802338694226247680
X-Received: by 2002:ab0:160e:: with SMTP id k14mr12008523uae.112.1583851624497;
        Tue, 10 Mar 2020 07:47:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ec03:: with SMTP id d3ls1719118vso.3.gmail; Tue, 10 Mar
 2020 07:47:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs8mgQqA9u6qNx9nmSMV+YAEjtqHmirldTTv7UEo31CSmC8XsAvYUlHstcKqWAV9cNFU7o1
X-Received: by 2002:a05:6102:757:: with SMTP id v23mr12131647vsg.139.1583851623022;
        Tue, 10 Mar 2020 07:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583851623; cv=none;
        d=google.com; s=arc-20160816;
        b=lLqP31G43wpHyDBNm/Iim1qkrCdBtHzHyI7qHozPEA7MEoaXrJnMA0+QGtD4hn43TZ
         TeGdevoOqUlpNUO4c17kc6baGsEeQmd7ynjJnNP/LlVaH3MKGuGiDfJrdtvtUlL5nHFS
         tpwOoaYOuEhlHoBBJlsNpJAIkOoSjDcpWDnBjqx3Jda75uIsA/G+JZXtWT8z27t+7bCJ
         TloZlQowiIcsK3riUXRk+mEIZN8NpcM4+QgC0RTvHHgyRDWWamz9sT9vfqYB2H3W07ln
         K1Ha92R6Jlw6qBWs8hRiVBK1ADQ93jFKiTRAV3r2fQf7TvUKLeyzjNQdB30ixXS9l/mr
         IT7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=aMzRas8hFsXhwkCpoL7SW0mIGLyb/s6rFuubAbVFkVc=;
        b=ti/ug/NZ1q2zr5g/hPwDZo6miVkY1sLOb/Nuk1ZQmwzKzqKaxSi5PI6UCka8u5xW0i
         MN8THvpQ99PXhgMt3OALkUVl3Wpv+H4Ygkx6tECv5qJITNlxE4w8R3rIsoZlV5AyWmkr
         g6WV+qxVNt1DQm61RybOwK5tfGw3yQ2e3wEAQjWa6YUkKtYYghVaihuo7CnkNFJ65Fbg
         3JWzOxLC9w446MYlDfiTxc2yi9T0Z7rAoLZI7lJkMpgVys4qNjLs17ayXTGvpvSTB1sX
         DkYlwWwx6YOJe/wlaZg8VidOTup0wPGnAceowOCg2IhwNt/F/ubxpBXDcPh2y5OtvcEm
         HBYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=adOWgvuT;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w4si855607vse.2.2020.03.10.07.47.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 07:47:03 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=adOWgvuT;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id f16so3371533plj.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 07:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aMzRas8hFsXhwkCpoL7SW0mIGLyb/s6rFuubAbVFkVc=;
        b=adOWgvuTsnhqY6KtADdoOmXPba/TYBm1BzoTIg2R4nzPcLG+/SyjCVZPm41PiTIaza
         2Cj392lbSm15V/APsJTT7+Ci5MnNCytbCQTFp2AWky+4Cs7sjtiyE98+HhqFwB1E766I
         YVBZFrecBL8mxU0lBbi7KWUiP7o1utGQrww2OTDTEgLaR7cPgsTocZeieSp0lPVNKaJb
         bndXe1xZkyQ/hpw0Rsu2YUho2o1lsQd3qd/y4MqWhB/Ff1wezZstaFgbOy47m1prJcKV
         M39hR/yVwsAqPd7qLgIKoxQDN2SZBi/S7Uqqx61NadTMtNmLR/52Q+3Uh7MUz5yU1hHl
         U/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aMzRas8hFsXhwkCpoL7SW0mIGLyb/s6rFuubAbVFkVc=;
        b=GjpFocZwyjPalLOZ92slACD7vJLxN8XP/dS5erKx6BhoU0HNQAuXKCmB30f/vBnjc1
         cC1413ClBoHgb4D+mKd8aVmcb2eQv7I0rTmtUXRmneioM22vmCnarPwbwcoqlmbLmrOt
         QF5PtG/4yHK5JOoI92B5QyqkcJk80HAalrrBz2exPE8gxesfSw4H1oHUi7y/Be1G8hKN
         4ES2okzHqsuvzByXbpWTCSkFssaRIJfa9BUUu5tHiLI1tMZRM7nfJwEToK8Y+uKfVFHU
         IVHyfnRyUHURme6KhKy9reord2OjgjafgQ5mIZA7O5idxlUEaC+DCePHUdKNihVGFDya
         nDsw==
X-Gm-Message-State: ANhLgQ2yeGQQcJJyqunSN2BqD8QlOsShkfF6SucFZFXE6eCWcASbzv4C
	KLwcYpjTG6HPS9yDQuVWv8iFfA==
X-Received: by 2002:a17:90a:f50b:: with SMTP id cs11mr876016pjb.145.1583851621951;
        Tue, 10 Mar 2020 07:47:01 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id o126sm899597pfb.140.2020.03.10.07.46.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 07:47:01 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 20:16:53 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/7] staging: vt6656: remove variable
 declaration
Message-ID: <20200310144653.GA26243@kaaira-HP-Pavilion-Notebook>
References: <20200309222805.GA5524@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2003100819250.2455@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003100819250.2455@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 08:22:31AM +0100, Julia Lawall wrote:
> 
> 
> --- Please note the new email address ---

Which mail address?

> 
> 
> On Tue, 10 Mar 2020, Kaaira Gupta wrote:
> 
> > int ret is uneccesarily declared and initialised to 0. Return 0
> > directly.
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/vt6656/card.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> > index 7958fc165462..5592b558cbd4 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -719,8 +719,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
> >   */
> >  int vnt_radio_power_on(struct vnt_private *priv)
> >  {
> > -	int ret = 0;
> > -
> >  	vnt_exit_deep_sleep(priv);
> >
> >  	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > @@ -739,7 +737,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
> >
> >  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
> >
> > -	return ret;
> > +	return 0;
> >  }
> 
> The change looks fine, but since the change has to do with the return
> value, itcould be reasonable to adjust the comment about the return value
> as well:

Please explain where I should add this comment? Are you talking about
the commit?

> 
> Return Value: true if success; otherwise false
> 
> Actually, the comment seems completely off, since the function does not
> return either true or false.
> 
> julia

