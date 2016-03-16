X-GM-THRID: 6261572642217656320
X-Received: by 10.50.87.7 with SMTP id t7mr3683398igz.11.1458140748160;
        Wed, 16 Mar 2016 08:05:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.8.42 with SMTP id o10ls12153iga.40.canary; Wed, 16 Mar 2016
 08:05:47 -0700 (PDT)
X-Received: by 10.66.147.106 with SMTP id tj10mr3206358pab.30.1458140747425;
        Wed, 16 Mar 2016 08:05:47 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id tu5si441234pab.2.2016.03.16.08.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 08:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pf0-x232.google.com with SMTP id u190so78167073pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Mar 2016 08:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=310WalT5LgokxFPbEnp8OGdqQyrIDjl/dmSlSLM3fro=;
        b=sc7h6S7E8ZYPkpgwaEiY4KhSMRJc322u0bA611Uma2YNZIqIdgldTxgev0G5XWn49j
         kvsmlpedzzKNtAMGBYshIMb57wN8qBqNa/4xzcoYyNMOcOBFZcFp04OquHScaYAMcOQT
         XRSloxuTPEUicyaTDK8/9VSl+f9JwhKIdFXRGBq1bsgFGbITXzb+EKxFlo+GEGwIodGB
         mG5kbKIMEvo2ois06k77H60LqoBnDx581aC1bTp1QIuoWwSMcY0RFQZj6bLT2O9bfwkT
         CrPK6adS53qa4kNB14grsC/mbtkXw/1Ep/9BAZLQfAFHmJCZ2ZX9XWiIQBGnhXKGaWQ1
         ZBsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=310WalT5LgokxFPbEnp8OGdqQyrIDjl/dmSlSLM3fro=;
        b=NfNg2DGJZZ5yfM6g0imM9t55ORQvlItbx/GNNJI0qx+a2RIuSeHMNbSujR32Ub/xTO
         4GajmxSOLRRjbUqQi4EEm7wRa3rVoQyWMJqLD0kJNxX7c/9uVfXx8hFVBwFR/Ul5o1Bb
         kQFYjmhIlB2KKF30xH48635jZTa6miuJG+u8k5HUyq5bSmyAJ4gOh17OHdQ8IkHcgFTL
         n8/RkZWBC4w1Y0hwsqBqkEgzKCysBPqEmuXVd5uwflhNXiGms0OGzNai2TXohQjW2fyX
         AXGTj+qAtaxlTcdPbI8PvDXcP1hpSgLMOge6Z4FDQUAmyjEjkAHw4L6OAZES6ie8K3Jn
         VGoQ==
X-Gm-Message-State: AD7BkJJkzTCX/RuOEOXbhRW2gm7hoxumBbWSlve7SntJAc4y9FWjqgXyvGguIKC0gtcmYw==
X-Received: by 10.67.21.231 with SMTP id hn7mr6754779pad.150.1458140747296;
        Wed, 16 Mar 2016 08:05:47 -0700 (PDT)
Return-Path: <htejun@gmail.com>
Received: from localhost ([166.170.37.216])
        by smtp.gmail.com with ESMTPSA id f66sm6431451pff.8.2016.03.16.08.05.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Mar 2016 08:05:46 -0700 (PDT)
Sender: Tejun Heo <htejun@gmail.com>
Date: Wed, 16 Mar 2016 08:05:45 -0700
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iwlwifi: dvm: convert
 create_singlethread_workqueue() to alloc_workqueue()
Message-ID: <20160316150545.GI6980@mtj.duckdns.org>
References: <1457885950-14344-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1457885950-14344-1-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello, Eva.

On Mon, Mar 14, 2016 at 12:19:10AM +0800, Eva Rachel Retuya wrote:
> Use alloc_workqueue() to allocate the workqueue instead of
> create_singlethread_workqueue() since the latter is deprecated and is scheduled
> for removal.
> 
> There are work items doing related operations that shouldn't be swapped when
> queued in a certain order hence preserve the strict execution ordering of a
> single threaded (ST) workqueue by setting max_active to 1 and adding the
> WQ_UNBOUND flag.
> 
> In addition, there are work items dealing with temperature throttling (tt_work,
> ct_enter, ct_exit). Adding the WQ_HIGHPRI flag would place the work items in a
> high priority workqueue.
> 
> Lastly, guarantee forward progress for work items depended upon during memory
> reclaim by the addition of the WQ_MEM_RECLAIM flag.

Hmmm, why?  Wireless doesn't sit in memory reclaim path although one
can argue that the temperature management shouldn't be blocked while
memory is short.

Can you please change this part to a question and repost the patch
with the driver maintainers cc'd?

Thanks!

-- 
tejun

