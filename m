X-GM-THRID: 6260883531997642752
X-Received: by 10.129.51.2 with SMTP id z2mr8421171ywz.49.1457725542552;
        Fri, 11 Mar 2016 11:45:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.165 with SMTP id d34ls3181887qge.89.gmail; Fri, 11 Mar
 2016 11:45:42 -0800 (PST)
X-Received: by 10.140.147.139 with SMTP id 133mr8319002qht.21.1457725542025;
        Fri, 11 Mar 2016 11:45:42 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-qk0-x236.google.com (mail-qk0-x236.google.com. [2607:f8b0:400d:c09::236])
        by gmr-mx.google.com with ESMTPS id k13si576870ywe.1.2016.03.11.11.45.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:45:42 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) client-ip=2607:f8b0:400d:c09::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:400d:c09::236 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x236.google.com with SMTP id s68so52071978qkh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 11:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3AelIR19bYVp61taMYVryUOSD8axiRaeS+KjtiTc494=;
        b=xjI7QuliMSm8XoJj2Yme3/hxaIADJbrvHcoAY3C/XWkNX1gmk1CNT94dVmqCs7CpD6
         TmHF60/ZDvyGzGDzh9ZnrFSZigHZveZuPeLKmuxCXQMAzPz9OVG20JCfFaP1hwSc5sWV
         Tn1ESIyrQmHGL8Ko2PGccweTrF3U7BBhzKo5Z1eKR3dok0WpHSNnV0wcAE7MuyD8gG48
         R0mTxqzQ2mYVcDatNQjItzF09Hbxfvdwc54810ARkMZAYzGEFY9+Yp3p9Ic9fYX8L/0v
         DvhrHQtnhobXm4j5kYC2uqsyvSly4vd6k/vz3+Q03FaT6p4n3ICT8+lEwnMivNtH+bcJ
         We5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=3AelIR19bYVp61taMYVryUOSD8axiRaeS+KjtiTc494=;
        b=dLMSKnNznjKH90AOhJXwsam+gj7GcmSxhi/C7yk7dbKQIs236j692G2Rjkjw0dHRPK
         oIPsGBYZmGOiJxRgJDOs0R5LOWfc5Xn0FmWwzYGvW7wcd9Ju765SW8nLW+SoonJjMOY3
         AUveHP1xgIe2vKVsarYSY5jSKE0Fz9fqNQjqzZ39Yaz92slYGJWYBwd1AxQphLGzZku8
         AW/jKT++MmqMGSY5+oA7GotAO8Cc/f4mueRi7gxxEsYHEcDCATVVjyiCoDnfnljn49bm
         yotpxaMyw/LRSvVKhB66gkOdYqpo1J+cGyoj08dWCtTIdawN0epmhtGhrtFSJ1Ta7osq
         YyJQ==
X-Gm-Message-State: AD7BkJKAbhdE+H9b73/eMY9KeUZNdqKqkq9XGthW0y+Ww/Ih1TjrKMuf4Ls1BG5SZUezZA==
X-Received: by 10.55.197.207 with SMTP id k76mr14380056qkl.15.1457725541852;
        Fri, 11 Mar 2016 11:45:41 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost (pool-100-8-33-164.nwrknj.fios.verizon.net. [100.8.33.164])
        by smtp.gmail.com with ESMTPSA id h64sm4593915qgh.39.2016.03.11.11.45.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 11:45:41 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Fri, 11 Mar 2016 14:45:40 -0500
From: Tejun Heo <tj@kernel.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Workqueue tasks
Message-ID: <20160311194540.GP24046@htj.duckdns.org>
References: <CAFNHFT83c__ZmX+3tt7ioh9q8i+OB4zkAcCp2gH3yobb4Ui9TA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFNHFT83c__ZmX+3tt7ioh9q8i+OB4zkAcCp2gH3yobb4Ui9TA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

(cc'ing mailing list)

Hello, Bhaktipriya.

Sorry about the delay.  I was really buried recently.  I should be
able to stay a lot more responsive from now on.

On Sun, Mar 06, 2016 at 09:45:50AM +0530, Bhaktipriya Shridhar wrote:
> I'm really interested in  working for the workqueue project . Can you
> please give me more workqueue tasks.

I forgot to write up about this but one workqueue task to do is
getting rid of flush_scheduled_work().  It doesn't make sense to flush
system_wq as one doesn't know what could be running there.  There
aren't too many flush_scheduled_work() users left but there are three
under drivers/staging.

I'll write up more about it later but here's the outline.

* If there are finite number of work items to be flushed, instead of
  flushing system_wq, flushing each work item should be fine.

* If there are a lot of work items to flush or work items are dynamic,
  creating a dedicated workqueue, putting work items there, and
  flushing that workqueue should do.

Thanks!

-- 
tejun

