X-GM-THRID: 6808532332710985728
X-Received: by 2002:a5d:6992:: with SMTP id g18mr15274999wru.426.1585573283177;
        Mon, 30 Mar 2020 06:01:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9781:: with SMTP id s1ls457982wrb.2.gmail; Mon, 30 Mar
 2020 06:01:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsuaGF0OTLSMRO+L2sqMHCjzG6OVQMXKK7K7cejKooMP+sdyVHb3lwSruLfluqn/QZYhk1Q
X-Received: by 2002:adf:f646:: with SMTP id x6mr14834082wrp.19.1585573281736;
        Mon, 30 Mar 2020 06:01:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585573281; cv=none;
        d=google.com; s=arc-20160816;
        b=ORwpW1BfiIrkZ4npGtLli6GfDizpw3O96n+3H44O3j31uINelBlt0NBkp2hfub8YJZ
         JidArCkbMfm8kOb8OSjRJ9wmItuRUE5+gDcvLomHQJ+W+diexDhii9D1WKQQZGIFp+H8
         OX3ybbIP2KL3085+6GtO/CWPElmV7j5x9pO1yOyfJt0QCyHzwJ84J4Pqo3FClLQIz3aC
         Kjll/sMeQvKkXyNyxwbvk3pCu3C9IuVrKaj3pR/yqjA0yBFomkJQq7hJfucG41dIxQe+
         bNg4guJCz+cx15pD1X+V1Mc35UETn5XTfMCK8wu9orLmGFPmqLnNCBy7ZFBa6ittuWEN
         MIbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=xqkwxJGp3CilwH4HPJryuVpzruQ7WMApqZpstpZLXLs=;
        b=U4qts1+joy7r71B77YhZvGaM0NS2miCASdk5SJlv54Bh/oSR8WLj3JF+QUA6WARsXG
         5bNY15fDSNu5yKb1njOI24vwwKHVpWT3iBBXIWIclJSvYEAO7lZ399x/7C37+kVBFbRE
         l/I7I7zIJQOqHgZijpTbbKlxoMT+dSr0o5BJDUkKHbsen6G5XY5pUlQHIOIR2Bf/ibpt
         H2xxtdL5hn5F0IO+ycqsjEPrVYVEnWODLg+wMdJao9a8C9bHgAOeVUopjtRj5n4oTg6U
         45IGrie3q+49m6/1yWp0yy+Np4SnxV2kpYAWTESI/QGQKSNwUNcO7kb1SRPFabigW3cp
         aiIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u8mjpG3U;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z14si45048wrq.4.2020.03.30.06.01.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 06:01:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u8mjpG3U;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id 31so21495196wrs.3
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 06:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=xqkwxJGp3CilwH4HPJryuVpzruQ7WMApqZpstpZLXLs=;
        b=u8mjpG3UmstaZx28/JTnKYRoNER+zq2LKYU6fLjf8KIBRMUeLxO6bXWnVamNzlgFft
         22W+M2A0/8wt9lJ+VaEIguhTtsIMDlRWP8sEebLkU4YTCYjrX584DmmwCf75FYT5m7uj
         Jy+lkyGr5+coxV/o5V+tcrB8LOnt6fHGAUAm9lNHuvZIfU1uWHkBCORqMGlq3Jd5lR5p
         EcjwNCBbs6xiN16iXwk7RSCGw0Hl3qSMw2d07AmoJ4xPWxlT9IbP5qlhmoEEPDAC1x5i
         asHYK6U0u001A0HlIOtYPRAbCL3b+2XmMlyBFCRMudtAvCh5H/SuLnZ2WTk5t29qFqgm
         xcgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=xqkwxJGp3CilwH4HPJryuVpzruQ7WMApqZpstpZLXLs=;
        b=QsRcmaf0cm/llZMd0JQmZqoRZDXft6PN1CIGk+1590xBbDWkA/mk2loATFFyhRceb3
         ejNSIWIH3j46Y/T63JrRJj5SfXww5b2GN7ia8b7HSf8dtbB4bDF6gIhdk0wiROx2FBda
         ah6IXi2jbqNeNgWjT7dfBVrarDjaXCzgqLVcOUyRwebI6qqnhd3kJwirCFZ8pmfy1uvf
         NcGIkNSyy1BSIyiz21ANsVv65oadj1ASm4Ed6xOuOsH5kBzUHdrIgh9kxYDQzONe28Yt
         kI5pVZgwpT3UTz6nv86Ha9eO35PItiu1O5HIJekblOyZbwxw35buTd5sY7bgFslPfL8a
         SSEw==
X-Gm-Message-State: ANhLgQ2UbGI0x0S1THxUe7pPqWBnLw0CSnRTNm03XRWAMD19ngisbvQZ
	1z+/WXvpI6M7TBCMTelUBfFpfKTAbN8=
X-Received: by 2002:adf:ed86:: with SMTP id c6mr14147197wro.286.1585573281441;
        Mon, 30 Mar 2020 06:01:21 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from debian ([197.34.98.112])
        by smtp.gmail.com with ESMTPSA id x1sm14441345wmj.24.2020.03.30.06.01.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 06:01:20 -0700 (PDT)
Message-ID: <7ade5ee43581a6fb3bdb8d5a567b28976525b843.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8192u: ieee80211:
 Use netdev_dbg() for debug messages.
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>
Date: Mon, 30 Mar 2020 09:01:19 -0400
In-Reply-To: <20200330095924.4824f330@elisabeth>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
	 <84dc7e33954509457efce2a35fb293e631845a96.1585233434.git.jane.pnx9@gmail.com>
	 <20200330095924.4824f330@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 09:59 +0200, Stefano Brivio wrote:
> On Thu, 26 Mar 2020 11:02:35 -0400
> Sam Muhammed <jane.pnx9@gmail.com> wrote:
> 
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> > @@ -436,7 +436,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
> >  	if (ieee->reset_on_keychange &&
> >  	    ieee->iw_mode != IW_MODE_INFRA &&
> >  	    ieee->reset_port && ieee->reset_port(dev)) {
> > -		printk(KERN_DEBUG "%s: reset_port failed\n", dev->name);
> > +		netdev_dbg(ieee->dev, "reset_port failed\n");
> 
> I guess you should stick to 'dev' here -- it's the same as ieee->dev,
> but reset_port() is invoked on 'dev', so it would be less confusing.
> 

Thank You for pointing this out! this got me hesitant but i thought i
could be more explicit?

Now since this change is already been made, i guess i should make this
a new patch?

is there any information i should say to tie it with this series? or
should be treated like a new separate patch? 

Thank You.

Sam

> -- 
> Stefano
> 



