X-GM-THRID: 6754207479593172992
X-Received: by 2002:a05:6830:13cc:: with SMTP id e12mr7329241otq.46.1572586537207;
        Thu, 31 Oct 2019 22:35:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5f56:: with SMTP id t83ls1262621oib.5.gmail; Thu, 31 Oct
 2019 22:35:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxMVHqydoPQkWvsRpX1J8+7/Om8VKyoLKYwuNF0uH32csMZljP7D5g7s0GPaeNCfy4+STPk
X-Received: by 2002:a05:6808:992:: with SMTP id a18mr1668781oic.82.1572586536338;
        Thu, 31 Oct 2019 22:35:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586536; cv=none;
        d=google.com; s=arc-20160816;
        b=LC8vK2aLFAGpeGdphQ/dwHDfDpkg6Po6XmoQ/sbUtHvQkr38dTMjtwG3tosbXKTkz0
         p28wIGOTuUnEAGZvL6MxwDvXWNLPmCHnfbHewpv+IO872tJc4TdQsuUh/T/dQlIMNEg2
         Rq9DzMlrwPqtefmaCf/eWae4wA5jogwK8RP8S1Wk464L//yFEgfg0FftettdTO6SQvio
         5ycxrxx3ssNEBgke9n6MFXSsDqojyxk8Z4Gy0K61oT9Ur+9im3vTj4jb1Z04MJ1umZ02
         /wD2dwdJb9fic9wBLQxJLEJWB8WXbeDfT6KD9g8vaVhx1liwyjywpiFqOm5AgzgTDkF/
         9Q0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Pf/SCXkM8DJDn0qjaqq+4niIwLiTDfPt/HUqJ5en1dQ=;
        b=EopLLG8JpPg95eE/CrrGkcJn5RgO5GzsnojIymxiKfrl3RNoEv2qDjQ9Qbn/Oqf+Xd
         dtP3mLXuweUA1Za0iWIgIVC3m0sW+eSTs2yZxN7m1uM/vmLhS9ldrwP6x03wHxB4Pwvb
         1dAo0K9Cwaj/GNJsiqWYSSD/blCIAZzXpI+5b5gHZ9U5fUgPm81giwZS2NppuD2UveLP
         +kJ4WBhU+CDVHGdtmPjBnNBBcfENAcRu2dGMBrKPPpvsFHeO/ZDOg4tOQczrYUow9jsq
         ueO7z0l5Qj8NUfgFslMGzW5Em2oy+XTffCe6KPm8g+FRSvputLC8r4Bn5ddzj0a26jQN
         7OlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=aDwJETe2;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id 144si371735oii.2.2019.10.31.22.35.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:35:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=aDwJETe2;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe42.google.com with SMTP id v10so5670326vsc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pf/SCXkM8DJDn0qjaqq+4niIwLiTDfPt/HUqJ5en1dQ=;
        b=aDwJETe2LHxdu8pNDTXgsLGs3+pK7sNHYJSNtuM8m7yq7WoypJ+putQ731DPIpHhWf
         RLb+YBA1CX6cmiRU70ay4qviTqy2DM/RuQeyZriyHy+ZJfl8EbF8rmcO/V9WnzXwWNXY
         XOGhrQ5FX1Py3PEtnsH3xVLBzXBaIdwuzObjhkKuY/q4755JqWVXM1lZ8seTcJH6lh/K
         hOxSrdcdpxyz99BKBDijLxjIBhQWU2zYVw6cqNu3SsGkmGR/69rfAwbeaA4dy+V+pFY+
         /kEg7R8r6PCyfwsAJB6tCa+DhLYHZyfC/d3CeID6nZmtS1nLayuX3g6Usu14yh+N3dVo
         Zjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pf/SCXkM8DJDn0qjaqq+4niIwLiTDfPt/HUqJ5en1dQ=;
        b=eR4SN/naNF1TckHvvQ3iKTVyR8RKwUxXJXJBE+b8QSS/8VIHRwIsjCclwNJWKzzDtx
         UlGz52LUGitg9U+e5YkKRcVWmUugiq6sqQ4dTF/QUo+KzqY/NgHLJ53R92BQPU9TtMT1
         xKp3sxVMpCsg/PW7OrOq+6xzsUHzxsfBk/UN2Qj0zR/n1R73s4hbH0oFfhMDucR4ckkE
         ECJm9FxcgriTLYKP5S92c6mYYATBDpKEF1m6y5Kl/lRjZGvjCNKmdDS2t8NILx8xLcTO
         rIVMqfNttwDVKQ72Lbs06743YRacbSfXU+hNrFE4C+IVE8/HusiVeDZ7FqHCYi+y+j0T
         M/3A==
X-Gm-Message-State: APjAAAUKSa6EMwN2ytKhmJXiLy8CW7QBbNDyWMoTKiiMHjUwgCO4J/2e
	Vp7bMPfWvJbr0rzyPGjnsZyyNA==
X-Received: by 2002:a67:f90c:: with SMTP id t12mr63559vsq.37.1572586535685;
        Thu, 31 Oct 2019 22:35:35 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.12])
        by smtp.gmail.com with ESMTPSA id b17sm1730613vkf.33.2019.10.31.22.35.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:35:35 -0700 (PDT)
Date: Fri, 1 Nov 2019 05:35:32 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH 2/2] staging: exfat: Fix logical operation continuation
Message-ID: <4c1e92802ad82567fb312bce096386d3285196c1.1572586238.git.frank@generalsoftwareinc.com>
References: <cover.1572586238.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572586238.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch.pl message:
"CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the
previous line"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/exfat/exfat_super.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3a7a10dbded4..3e19d5d7ef20 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -2980,8 +2980,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
 
 	pr_debug("%s entered\n", __func__);
 
-	if ((attr->ia_valid & ATTR_SIZE)
-		&& (attr->ia_size > i_size_read(inode))) {
+	if ((attr->ia_valid & ATTR_SIZE) &&
+	    attr->ia_size > i_size_read(inode)) {
 		error = exfat_cont_expand(inode, attr->ia_size);
 		if (error || attr->ia_valid == ATTR_SIZE)
 			return error;
@@ -2990,8 +2990,8 @@ static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
 
 	ia_valid = attr->ia_valid;
 
-	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET))
-		&& exfat_allow_set_time(sbi, inode)) {
+	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) &&
+	    exfat_allow_set_time(sbi, inode)) {
 		attr->ia_valid &= ~(ATTR_MTIME_SET |
 				    ATTR_ATIME_SET |
 				    ATTR_TIMES_SET);
-- 
2.17.1


