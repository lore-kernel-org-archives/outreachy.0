X-GM-THRID: 6949336667395194880
X-Received: by 2002:a5d:9c50:: with SMTP id 16mr13815183iof.66.1618021917755;
        Fri, 09 Apr 2021 19:31:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:1455:: with SMTP id l21ls1518111jad.11.gmail; Fri,
 09 Apr 2021 19:31:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx5eLC7sjUTainYOh0JdDyqADziNa397rmFDyr7x1LAiG327eJWAPBSpzdkR/AgvefuzAk1
X-Received: by 2002:a02:a50d:: with SMTP id e13mr16504691jam.109.1618021916911;
        Fri, 09 Apr 2021 19:31:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618021916; cv=none;
        d=google.com; s=arc-20160816;
        b=VSfs2fdCXEXuh8db5ZneW4JOdRSG41nqSd0xf2um/jsvrSihZBkOI0bInKakKmeArl
         +m0Enc/j/KhJ759ylzz8ozymqlZvjQNqC+lUDJGA+jCv82Bkyp9Q+4tA9PnJWDYGaf/m
         X+oZryrdfpeVZG5xOXveSuEyX7gjzhq3KlZJYfjXpt3dxpUjHIuJNfemJMT7pnPvfOfX
         qz9TCDeefK8w/W13KX25OkJgSnjnoTK6f6n8V8R+1GhbgxCM2jng4Ok0ps8Q48mFrf/a
         cz6PXF/6LMvHU0rDNrY7bELKFLZMFnsF2MlNIq17Wgwy1ZYsY7mBFT3P4ObE5pJc6KIO
         /iqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=JkxyWCdTQqezn1bFvpD8t76+Ty0hnytvsVPMLSCBKbE=;
        b=eFQdNOOPn41swnUOAzrUeGl/j8EZH+CXgBfWTAy92nVp1aedZiWNccUwKQry0xyWoS
         65uWpevBZdfYas9lhpFb2LJelqTpvmzOqy0kKOl1pqfSWo4bsBYmhYeG4jt4Ldwiszun
         j6cGDk0i7m5dh7SbeeUC/YnCJ87Qw29+LP1XmRkkdWTw9VjWvKRFxvQopVCCWMExud8e
         YLgpNccZWfR1PkRQUroteuqIzUKNNL7hJrCNRSZanCXluvn7LxW/mMUk8hHg//T4w9H4
         irgYx+OnVes9HCkCCXcZZYn6HcE/0RAtjKrBdyWbLSGv9z3U7y8xZA20gaCnrXBv4zmv
         JIoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.38 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0038.hostedemail.com. [216.40.44.38])
        by gmr-mx.google.com with ESMTPS id y13si154579ilv.0.2021.04.09.19.31.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 19:31:56 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.38 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.38;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.38 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf03.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 396D718150A50;
	Sat, 10 Apr 2021 02:31:56 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf03.hostedemail.com (Postfix) with ESMTPA id 3314B13D94;
	Sat, 10 Apr 2021 02:31:55 +0000 (UTC)
Message-ID: <04fcc5ac37f750e335447aee57da5aad072e321d.camel@perches.com>
Subject: Re: [PATCH 4/6] staging: rtl8192e: matched alignment with open
 parenthesis
From: Joe Perches <joe@perches.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
	mitali_s@me.iitr.ac.in
Date: Fri, 09 Apr 2021 19:31:53 -0700
In-Reply-To: <YHEMrQdEFpXgmMh/@kali>
References: <YHEA2Te3Hik5J39t@kali>
	 <f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com>
	 <YHEMrQdEFpXgmMh/@kali>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.10
X-Stat-Signature: qyweys8gmc393ikshcq9nfi1t1idfwm4
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 3314B13D94
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/jsGVRnYflYxVFQhm6ZrKMmWNfkAc0CcM=
X-HE-Tag: 1618021915-880427

On Sat, 2021-04-10 at 07:55 +0530, Mitali Borkar wrote:
> On Fri, Apr 09, 2021 at 07:07:09PM -0700, Joe Perches wrote:
> > On Sat, 2021-04-10 at 07:05 +0530, Mitali Borkar wrote:
> > > Matched the alignment with open parenthesis to meet linux kernel coding
> > > style.
> > > Reported by checkpatch.
> > []
> > > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > []
> > > @@ -154,7 +154,7 @@ bool IsHTHalfNmodeAPs(struct rtllib_device *ieee)
> > > �	    (net->ralink_cap_exist))
> > > �		retValue = true;
> > > �	else if (!memcmp(net->bssid, UNKNOWN_BORADCOM, 3) ||
> > > -		!memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > > +		 !memcmp(net->bssid, LINKSYSWRT330_LINKSYSWRT300_BROADCOM, 3) ||
> > > �		!memcmp(net->bssid, LINKSYSWRT350_LINKSYSWRT150_BROADCOM, 3) ||
> > > �		(net->broadcom_cap_exist))
> > 
> > checkpatch is a stupid script.
> > Look further at the code not just at what checkpatch reports.
> > Align all the contination lines, not just the first one.
> > 
> Sir, I have aligned them in last patch of this patchset.

This sort of change should not require an additional patch.



