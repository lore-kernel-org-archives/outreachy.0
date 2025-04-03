Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1467E24CEF1
	for <outreachy@lists.linux.dev>; Thu,  3 Apr 2025 12:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743682421; cv=none; b=oXHR3AyK9XoEX3POGfYUTN8pqkEYDN9JuRRCMx3W35PTFCLHBWWZWIrufpArcGamZzwj06hcb/zWuL5IzAV/o1llFrNDfVNm00EIBWEM9WiGDdaA6oRNTYtaFly4870dl7JGY4HkkxTJre4LlFBk7Kk48Ti0kyAUoXUFm9FgxOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743682421; c=relaxed/simple;
	bh=6HBSXgVJQpnXZ2wUeUNsTHZDwNlVPaiPU5s4ReCzWvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P7Czc5F43mqRZ/+qLnUV0OO6VxqojLsZ8iM8bs0sEmLPIvnFQkJTm6iKd4Jieun9QsVQgIdQc/lTmEtpRZJT9e2mI+Xhm/4ty01v6DPHR4PdKvjfKP/+LIZYcXMMnk5IzUO8/YyX8IFmfhKZrfsALe1neJChvsw8hAMSSgeNG9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o8W5dd6E; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o8W5dd6E"
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cfe574976so5075585e9.1
        for <outreachy@lists.linux.dev>; Thu, 03 Apr 2025 05:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743682418; x=1744287218; darn=lists.linux.dev;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YoPotb8pXLLdqy0ZKPd2+Zf9wmiJLFly+WdaF3/DU0A=;
        b=o8W5dd6EXWyFWsSCG+6CWLZ00FHgV9h5rNqGgPT86Q5NTShh2WHvOTiVmHOOvTEARU
         s3MBr+f4YQkAqT+BvVelq6/0yp+fLlZWwwk+51FrmcrLnXB9MppFWXcz6UiCmuvrX74Z
         wZB2EIZpE5h9XhyEl379Buq81swJCQrfTXyNyz8fC63t6tMOnflp5RV4ZggRzHflVsP+
         K3VcOJiEasBojldZfadFJ24erftnQJwjY+Mw894Zg9QxUUncqUlFD+/wTZmMBnSp1t4e
         dLxR8Zg0qqqxCvZoQB9zc4Zg/SN/RI49jo4aWENpzcqVItu7SZil4dHyDgXksjd/mfK4
         bo0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743682418; x=1744287218;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YoPotb8pXLLdqy0ZKPd2+Zf9wmiJLFly+WdaF3/DU0A=;
        b=rFDi0L7VoU7BR5JUYGe0rAdN80s1Ow25I5NF11o7ynwADv8ADcgYsC31cKoZWk2XMW
         egoTMGV9KzG1RJr0b4SfVIhY1R5/Mgic7ixhe0CRLsKfctpVCxa1TiFFGjxPqAdjaWfv
         lZbpCRGRBGN9HrZwYy5WzDhoxMPrzB74DAg1ohsP88ZmwO3Cu5Hlwo4nK11iuhmwcC+N
         dYsr1GupEgrgAjAjx5eJy+M0eGR+O1AmAO+ap/7iZm2BPtcBKVsebOOcG/e/GWXNjtR5
         ea11X+69IxYeJBJYud5kpWQZRWwwFzy0ZHyOcd30HN+UMYYePe/7v9u5+lAthju7l4lA
         mJOw==
X-Forwarded-Encrypted: i=1; AJvYcCVv/0rmix8BjBSwTGkjvBYAcp6/RfTqYYbXtTGkW6YsiHOT5l42Bkjb8Vx8Ki2+ilk7IDnoGxaECJo=@lists.linux.dev
X-Gm-Message-State: AOJu0Yw1KWusLwsEiYi4/yc9jApJwRifGaHDCEVmaBUmMgeOH0jSaqiX
	1heQBTn+gMTG9EmntFyvrNJ8HWm3fPCxJRn3khMGCer9qQI0fq5SLuOvSj28vjg=
X-Gm-Gg: ASbGncv6EFPvMql3BgCfNxaA2zli7Z67rMEL2rP2/r2i9tEEkCQgY6C1Nc+9UxEptO1
	3mMkVHnksT29/Wh5H0Byss+q78AyaIw2YbwROGQ9CEdoaCas5dzSgqbAFkRDWdglhrbJHrqxWIK
	Ay18NEtWrZek/We1teUaxuAD6CPYFIAlkQe72TvFQI0H/cC0X7Nne/H/PbBJughRvtHD2tkQbCk
	iwcTdcTMHg7NDwjfl65JDzAyVS8ukyS+y0YrgID7AfCfIw/VIU/pmx6e6X1Vx3WRFw89wCwNuAw
	FKqTkK+bWQcT98g0U+FS0iZZJm/68zy6fw9zhnjKGLP1FXs4ow==
X-Google-Smtp-Source: AGHT+IGBvPoR+oe6zc3Bkj+MZpGdnpSz1Fof/p26ip33prZb/K4xDmqMovA0IJ8E/rXDyTM9UmrROw==
X-Received: by 2002:a05:600c:5117:b0:43c:e9f7:d6a3 with SMTP id 5b1f17b1804b1-43ec42a00b0mr23581235e9.13.1743682413384;
        Thu, 03 Apr 2025 05:13:33 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43ec1663060sm20483615e9.14.2025.04.03.05.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:13:32 -0700 (PDT)
Date: Thu, 3 Apr 2025 15:13:29 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Erick Karanja <karanja99erick@gmail.com>, outreachy@lists.linux.dev,
	philipp.g.hortmann@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] staging: rtl8723bs: Modify struct rx_pkt_attrib
 attribute bdecrypted
Message-ID: <Z-57aR3JYrdpHafs@stanley.mountain>
References: <cover.1743613025.git.karanja99erick@gmail.com>
 <00287fa9f40c643b8451a0d2df8e2fb97235ee46.1743613025.git.karanja99erick@gmail.com>
 <2025040215-confusing-sibling-f99f@gregkh>
 <3c235d91-efd6-ddf8-7c9-d8d35c7585@inria.fr>
 <2025040246-series-tusk-bec1@gregkh>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2025040246-series-tusk-bec1@gregkh>

On Wed, Apr 02, 2025 at 09:41:57PM +0100, Greg KH wrote:
> On Wed, Apr 02, 2025 at 10:34:22PM +0200, Julia Lawall wrote:
> > 
> > 
> > On Wed, 2 Apr 2025, Greg KH wrote:
> > 
> > > On Wed, Apr 02, 2025 at 08:16:42PM +0300, Erick Karanja wrote:
> > > > Standardize boolean representation by ensuring consistency,
> > > > replace instances of 1/0 with true/false where boolean logic is implied,
> > > > as some definitions already use true/false.
> > > > This improves code clarity and aligns with the kernel’s bool type usage.
> > > >
> > > > Signed-off-by: Erick Karanja <karanja99erick@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8723bs/core/rtw_recv.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > > index a389ba5ecc6f..fd04dbacb50f 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
> > > > @@ -1358,7 +1358,7 @@ static signed int validate_80211w_mgmt(struct adapter *adapter, union recv_frame
> > > >  			u8 *mgmt_DATA;
> > > >  			u32 data_len = 0;
> > > >
> > > > -			pattrib->bdecrypted = 0;
> > > > +			pattrib->bdecrypted = false;
> > >
> > > but bdecrypted is a u8, not a boolean type.  So setting it to "false"
> > > does not seem correct here, right?
> > 
> > Is false different than 0?
> 
> Does C guarantee that?  I can never remember.  I don't think it
> guarantees that a 'bool' will only be 8 bits, or am I mistaken there
> too?
> 

These patches are fine.  This does come from the hardware but the
patches don't change the layout of the struct, just the right
hand side of the assignment.

The C standard doesn't specify the size of _Bool.  It just has to
be unsigned and at least one bit large.  The surprising thing about
_Bool type is that it doesn't truncate anything.  So you can do:
"_Bool x = y & BIT(20);" and it works, but if we use unsigned char
then we would have to add a !!.  "unsigned char x = !!(y & BIT(20));"

Btw, true/false are not keywords in C.  They're defined in
include/linux/stddef.h.

The main review here is if there is a typo where we accidentally type
true instead of false.

regards,
dan carpenter

