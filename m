X-GM-THRID: 6746442134706978816
X-Received: by 2002:a50:eb4d:: with SMTP id z13mr14539847edp.175.1570815334839;
        Fri, 11 Oct 2019 10:35:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:a51:: with SMTP id bt17ls1902312edb.8.gmail; Fri,
 11 Oct 2019 10:35:33 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy7LnGraZoRvq9c5gAF1t2KRom6xJpfJR7yYjzm4PV0906WwbPnftXxdXep/KvqkX3GOLdo
X-Received: by 2002:a50:ee92:: with SMTP id f18mr15150130edr.56.1570815333603;
        Fri, 11 Oct 2019 10:35:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570815333; cv=none;
        d=google.com; s=arc-20160816;
        b=CRvUObm8gyASlCZamFE4xD7yfb/3naE4pdlXuF4T3XydNMXuw9vk8vbQqRLqes2C/R
         cutM2/6Od0sWzTl6t//3W+v54oLi9FD/pFBRamhbWLafZs3WDADwu8dtEjuGx0tFi/5P
         isflOkiZcN0Auerh0mxQy8M4qwBH1Pgcg8M1rEZXhFqlEiOUwao2hN7ofHOMcj+cUnDq
         aMi2rS4uJLGE4fHCkmPvnd1n3lwUfToYjU6cTzOwMRfngDbyfov3wKEek5Ry41uZJGxU
         1/42p4+D74b6HFcQPQI+MncJlYrutmYsxliNWOmPLg3iGMu1tKKPZeMJYyr2xzg1BWLi
         7kSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=ldn1+y4i+TM+l/Cu4HtEy/jFbE45xXljUNQey12ghIg=;
        b=wL5UO3em7/a2chwYQ1V3bFi6z9Qup2mM5zMAK77pRI3K3zZwgRygfGeP0z2rMRpIwa
         /YYXXg5cL+yTRuwG8KExAo4UNwApUpBF8LFBb10E2XV2cTcY+bFNHokOn8lnzLdRgZHn
         KoikTYJVMXpPOPqG1GMdvLYrPLSrorguZn/vR1MLPg+2ICPhxeXNb4LHwJ3lYIfKmzxz
         7R6+zMeVjm3N1BBLCm/v4/uWwfrVmg1O89d5d2xusq6D+YLfBsKSCXpL1tkua7JEhasz
         bZ0TJC5aYi7y4YqdkEqDstIrVWvQMeqCK944o6HPd6xNRZq4lPJAM0EpU0x6UZRhlSJK
         FlUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zs2H82o4;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id d11si113244edh.3.2019.10.11.10.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 10:35:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zs2H82o4;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42e.google.com with SMTP id q9so12813943wrm.8
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 10:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ldn1+y4i+TM+l/Cu4HtEy/jFbE45xXljUNQey12ghIg=;
        b=Zs2H82o4DqF63IDhzoBFLmddb31FxW0PjesX4lLX87MmDlERw56C4+lJxly+SyMPAz
         PGUsRU6sE6/aU4CzGCBRoSNFQajdav8CSNoZTVGx5AYrigEUBYkmOvyFmZZ3dZYWTuIi
         m7sBJuLLlGhQ8krkYeGvATfvi96AbbAWdYtG0H6rMWVcnYlmCwCxYl3JsgOjtUB/7U9i
         QM0LQzc5Mzc325Muz9LJpZU3uzc4gQj6MjF+aEOPpjRb2VNk4usKnLUHfXvv6KszKc/C
         oWJffYE2VnWLeMrolSwwRUxqFPyTshE+RyhbjmishCoQOlSHVLYGstv2PA+cRy2oY9NF
         mbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=ldn1+y4i+TM+l/Cu4HtEy/jFbE45xXljUNQey12ghIg=;
        b=dkV8xqO6EYK5Ti7Gk7wTazyhybGX6evn1M00jLD0mgYyk/m80ZvzEGhyfhY0n25aUb
         xao2f+380IZ18X6c2NQf54zdOPHEInKtE6812Ndar3QQNbpbvmVOfM0yTrIzSRMjB9LC
         YhbxlJOAc/LIwegvR74D584UBinuvHrTiU1BuK6eyhkwuBh2MEPRbttM18ihVleZDnot
         c0MSf+nK0ssX1UkBlAOJ6vK4k2LsP/Pm7NEvPu5sw3L2x8sDTS9/lX53P7XmNEOB+Jyo
         2fIN5ijLClOYlGO4P/vHqb2ginhIuqi35hnzfBY2g7cQHDFBw+JEdmc4A0iIOcHtZUDd
         t/Qg==
X-Gm-Message-State: APjAAAWs+Wt7aw6FO0FvWvf/s2jQ+GJ3Mb43bSeMu2Df2NrAf5FwRcm1
	zP/C+AQzNbV2FKRYrX8BTt4MNgj+PICouQ==
X-Received: by 2002:a5d:43c2:: with SMTP id v2mr8911335wrr.153.1570815333323;
        Fri, 11 Oct 2019 10:35:33 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id a18sm14506877wrs.27.2019.10.11.10.35.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 10:35:32 -0700 (PDT)
Date: Fri, 11 Oct 2019 20:35:27 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	isdn@linux-pingi.de, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH] staging: isdn: remove assignment in if conditionals
Message-ID: <20191011173527.GA22796@wambui>
Reply-To: 20191011110019.GC4774@kadam
References: <20191011072044.7022-1-wambui.karugax@gmail.com>
 <20191011110019.GC4774@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011110019.GC4774@kadam>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 02:00:20PM +0300, Dan Carpenter wrote:
> This ISDN stuff is going to be deleted soon.  Just leave it as is.
> 
> regards,
> dan carpenter
> 
Noted, thanks

wambui karuga

