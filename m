X-GM-THRID: 6950041041271521280
X-Received: by 2002:ac8:7fd0:: with SMTP id b16mr24782141qtk.91.1618220987984;
        Mon, 12 Apr 2021 02:49:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:9e11:: with SMTP id h17ls1211503qke.10.gmail; Mon, 12
 Apr 2021 02:49:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyUZfSLTyWUNSbK6w6FGcrWyTH1XCPSu5Gb9j/vkHgX6PzhhB+6rPczC1diqn11NKu3+zhW
X-Received: by 2002:a37:9604:: with SMTP id y4mr419670qkd.354.1618220987173;
        Mon, 12 Apr 2021 02:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220987; cv=none;
        d=google.com; s=arc-20160816;
        b=wF+CNolgADUzGZ4RE7WFQ4tSbRA1RUJlrLG+/8LLgl5ppqYtlqkBHhDg1JnjkcVD9G
         0TOeJnhDuAAZNcMBHXZh6R0A5AnqX08/YAUj0dYCP8tLK5b6RmACc7XbfWJ++DaRchtN
         6DfuvPfNU54vYUOF1dns0Zxxm383sYatbdzHlqjZZCdOmh1if/trKO9XyBUTu4aq8Hi8
         REfORGVnDNnacAS/GtHT3hof5RoGTkdta6p1N2CIvFjzzEoqVNaxnKO/hEyOfP+oblmH
         jSi99wPzi5PMr1iKreV1mSOGI8Kf7kDswswYArx9Gl60YSdtMuhv//41qdZ0Cv/Rit/k
         4+gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yr1hxr/jxwh/op90rcDc2SOWGJrWjMQMDetAeBZVxI8=;
        b=mlZ/UJp3GfuAFPdkfchVBIiLJdQLy/sGDB/8UfO5Q49cNHqfd9EvYvWm86hHeEjJiw
         FVlLIogCYitBHElhG/ovS8bg7iRXHHz0jjZY+mp84dBkr/qjVhMuXuEOeDRBjUrgkq61
         rBW1BptnR/gFiNrHapRVcBYcSMhGNhiVA7TA8f7y2ABAappiy0w8UBjr5Yta4ciWVS+C
         YGneF9o1FoURVDzL0lQFvIRdkDlFvtQQfaotb1aqax3tOIvM8dF73pcQRQVuR4mHfZIF
         PdKym4a8JuRwxaC6gaf0lXIcldwTXfj8l9585ykzv444rLIcYoNpJ0SXHcMKL9J13vYl
         pZKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="rrU/vBGL";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r26si957488qtf.3.2021.04.12.02.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:49:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="rrU/vBGL";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7DCCC61245;
	Mon, 12 Apr 2021 09:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220986;
	bh=STkQ8+IugJsod09/b3SSA8/zerHQtq0zCVlHXClktnk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rrU/vBGLpFGNXCdED1p2vyNrtl79FV3jbKkAogjLsxwjdkJ+p4144siTcql0FGob4
	 6ESq0N9PAbCIC1nWPLffd5WI+s85MjgDizjSArtwXvrrLHrVtG76XlYJyJO5xGOQhr
	 ovSIoOvwQefqyegTKi2qTXT2ebr5rlaq9E4EA47g=
Date: Mon, 12 Apr 2021 11:49:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/6] staging: media: intel-ipu3: replace bit shifts with
 BIT() macro
Message-ID: <YHQXty07oAP1L0W9@kroah.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
 <20210412094230.GI3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412094230.GI3@paasikivi.fi.intel.com>

On Mon, Apr 12, 2021 at 12:42:30PM +0300, Sakari Ailus wrote:
> Hi Mitali,
> 
> On Mon, Apr 12, 2021 at 04:38:39AM +0530, Mitali Borkar wrote:
> > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
> > and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
> > Use of macro is better and neater. It maintains consistency.
> > Reported by checkpatch.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > index edd8edda0647..589d5ccee3a7 100644
> > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > @@ -5,6 +5,7 @@
> >  #define __IPU3_UAPI_H
> >  
> >  #include <linux/types.h>
> > +#include <linux/bitops.h>
> >  
> >  /* from /drivers/staging/media/ipu3/include/videodev2.h */
> >  
> > @@ -22,11 +23,11 @@
> >  #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
> >  
> >  #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)
> > -#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
> > +#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)
> 
> This header is used in user space where you don't have the BIT() macro.

If that is true, why is it not in a "uapi" subdir within this driver?

Otherwise it is not obvious at all that this is the case :(

thanks,

greg k-h

