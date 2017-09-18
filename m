X-GM-THRID: 6466370226932940800
X-Received: by 10.25.229.18 with SMTP id c18mr808534lfh.1.1505729102473;
        Mon, 18 Sep 2017 03:05:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.11 with SMTP id e11ls83519ljb.4.gmail; Mon, 18 Sep 2017
 03:05:01 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD42Il2Ykj2yCg5Qw4P616phcV8mLZavMCXJdIdj68jheJmLaPsy2ZB2fXddb0NYeGJFFgd
X-Received: by 10.25.195.206 with SMTP id t197mr782730lff.40.1505729101891;
        Mon, 18 Sep 2017 03:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505729101; cv=none;
        d=google.com; s=arc-20160816;
        b=lOQbBVffgGJpfzg1YQl+yN1bN4XU2qFSdfvLRaY77EmfNDo+KaJM+pOdVtZxCKWZZx
         MRtgsTcvPwHu8pdUlgl/5Sw1S/SYXbk6hS7uhxWO8stiY/L6Y4PM7vFxkg+O04AlvXO8
         qz1DPA30IJ5v4ocbfxxhoEXNd5x4QgvJGuSUH+1zpuyrdPQRgHpnKVCXLhp6m36VVGUp
         o6cFfpxa7EgtDsATl5btOSWjK5Psqr24G5hYWXOT1yJJuCOI/YRZl94bNsaEwvdS0TD4
         OIhSPo8lbp/NvFL4zgoQoKyH2iRGv/bh7UpWzDTxEgIgf5SoicpC8xdgFmWway2jFzih
         LVUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=DbyZtFjX62J922POU9wAMgJ2K3rTbFQi3TtD1cl9XyM=;
        b=emfzbYu8qrbWn66gOmgdDtgq2jtZ1IQI6EdxqamLgSEsVeajy09A+Hzo86tbj+s7Ap
         MMoRb/JULhj9LsSMEnve9FE/IuJwIjvnB6/gM9g2YufQkgREPVZKsVlORKWGnyypQiAJ
         fliBliJ2kJ0BIaueoOg5vmZw6AQuHp0F/hKq1WadYA22JxL8XdPXS3ipFglc687mM90r
         nJaPtpHUnMSpMmLy1WfH/9u4okobWC4KSc/sfrt8Kcz7nxzHB/V4bCM37tHS5HMc7YGs
         yBvd15S9UJh6cm3Ad3cfY/TCLjCOsMDdWqizGXHF3Un016Q/LHS7QK/jmPR/WwQBaH3H
         p8YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j4si534969wmi.2.2017.09.18.03.05.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 357C9BE4;
	Mon, 18 Sep 2017 10:05:00 +0000 (UTC)
Date: Mon, 18 Sep 2017 12:05:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] taging: rtl8192u: ieee80211: prefer pr_debug over
 printk
Message-ID: <20170918100511.GC24451@kroah.com>
References: <1505569134-18604-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1505569134-18604-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 16, 2017 at 07:08:54PM +0530, Aastha Gupta wrote:
> This patch replaces call to  printk with pr_debug function,
> thus addressing the following checkpatch script warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_dbg([subsystem]dev, ... then dev_dbg(dev, ... then pr_debug(... to printk(KERN_DEBUG ...
> 
> 
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
> changes in v2:
> 	-replaces string with function name with %s and __func__.
> 	-combines all strings concatenations into one
> 	-follows line not over 80 characters rule

Same issue here, also your subject is missing a 's' :)

