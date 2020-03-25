X-GM-THRID: 6807140134242222080
X-Received: by 2002:ae9:e014:: with SMTP id m20mr663261qkk.434.1585583906467;
        Mon, 30 Mar 2020 08:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls7061925qtk.7.gmail; Mon, 30 Mar
 2020 08:58:25 -0700 (PDT)
X-Received: by 2002:ac8:1865:: with SMTP id n34mr594654qtk.93.1585583905264;
        Mon, 30 Mar 2020 08:58:25 -0700 (PDT)
Received: by 2002:a05:620a:750:0:0:0:0 with SMTP id i16msqki;
        Wed, 25 Mar 2020 00:28:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtwFXy1Q4Jy19Pu+yJxq8jUp6edAbsR6r3qebnXM6HU7bkoevQobv57M9QqqJElDEC649/z
X-Received: by 2002:a67:fa05:: with SMTP id i5mr1446328vsq.225.1585121326644;
        Wed, 25 Mar 2020 00:28:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121326; cv=none;
        d=google.com; s=arc-20160816;
        b=Sx0apa3Wp/2WCtGSvA4iX9+tEX73O6P7WqCxyld8bFxzUxhCu45X50Wv5UWz2OQks5
         +WJRM8P19ocLu2/o6ZSUpRVvpgoH8Gr3lfYSXKHUqNtpX7zqfHcWdZUeH6i5nmEz1ZkS
         PqPWqd7F0drI1nVzEerRPOyuwUirr+6PyODGNzktGbhhxqcvMqhXja3vv/LaFAFzr1X4
         CCkQ+2YDI103om7AVy0QKnFNLffxxgsTMnvSDoSOlmrKArsDIJ7n9RdrcCO2IEn+QnuK
         ++i0KXhv0z0xU4hhlU5tjo/1OtwmFZ/1KKxYe7pw1vbsm4EJPhn35RE4X+eJg9/GCi/I
         ZViw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=1qT7K4LY4hocj0uITMNzLrpN/GZ77cJsern0iCsb/CI=;
        b=g7rpJbrZcHbROkAsujvO47sRcGmz5WRbnaPIGXbYsvFjZl1XchiJn9AgS8Gcmyu07t
         fvxT0Uysi/ZO1LMUzA5OUA1WpfUBIgojiFK96qhR2Nvgl7ew2XN6vOeSlpiKAqC3NElB
         Znafiheo/9GJCw5+hlO6nD0G3HCh/czRGrMDTojsePtuBBergskcbqCg9+bcSlDz6nX7
         /eRHm4NZcYJbyNBbTW/sNOqmHXcTy4afHfjYMlwEtXSIJdCldKWrDr7Pgc/YGH5hlEuI
         WNM8n7PTbwk1BSQO2VIZlLIl2Fycb3puZDzIZNnJNyldry5TuSWNy/vhFT0ono8u4bCc
         6RnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id h6si930097vko.4.2020.03.25.00.28.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:28:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: y5TQ7jX1MAbDhTLzaPTwcxqF3LOK2rsUm7ePArxubjk/zM2diDZt5w+gMs+0p2jeedFUHGQs1m
 ey85JVwMC+lQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2020 00:28:45 -0700
IronPort-SDR: 5EUMt6i3RF4lnfFEhsS0ka/z7x1/ONDDmFTHC34upyuCmtic6W3bxIJVHBloBs5Z8jRZpAC0JE
 sZ5D4kjMtm0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,303,1580803200"; 
   d="scan'208";a="282061001"
Received: from riess-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.252.32.159])
  by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 00:28:43 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
	id 884F021F8C; Wed, 25 Mar 2020 09:28:39 +0200 (EET)
Date: Wed, 25 Mar 2020 09:28:39 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: DEEPAK VARMA <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200325072839.GA22460@kekkonen.localdomain>
References: <20200322210005.GA27747@deeUbuntu>
 <20200323071024.GB20234@kekkonen.localdomain>
 <20200324193759.GA26516@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200324193759.GA26516@deeUbuntu>
User-Agent: Mutt/1.10.1 (2018-07-13)

Deepak,

On Wed, Mar 25, 2020 at 01:08:05AM +0530, DEEPAK VARMA wrote:
> On Mon, Mar 23, 2020 at 09:10:25AM +0200, Sakari Ailus wrote:
> > Hi Deepak,
> > 
> > On Mon, Mar 23, 2020 at 02:30:10AM +0530, Deepak R Varma wrote:
> > > Remove extra blank lines from the code blocks.
> > > 
> > > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > 
> > Thanks for the patches. They seem fine to me, but could you send them to
> > the linux-media list, please? That's where the media patches are reviewed,
> > including the staging tree.
> > 
> Hello Sakari,
> Thank you for your comments. There are 2 patches for ipu3 that are
> reviewed, but yet to be accepted by Greg. A couple of them have already
> been accepted in the recent past.
> 
> Do you want me to forward the current open patches list OR all the past 
> patches as well OR just the future ones?

Unmerged patches and future ones, please.

-- 
Kind regards,

Sakari Ailus

