X-GM-THRID: 6200365191427784704
X-Received: by 10.180.105.98 with SMTP id gl2mr5006459wib.0.1443635934404;
        Wed, 30 Sep 2015 10:58:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.106 with SMTP id w10ls1021097wiz.53.canary; Wed, 30 Sep
 2015 10:58:54 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr769063wjb.5.1443635934054;
        Wed, 30 Sep 2015 10:58:54 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id k7si57735wif.1.2015.09.30.10.58.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 10:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=mahfouz.saif.elyazal@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id fx3so209555048wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 10:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MfuyULJyhaq9o2WFogshS8LIw71jIumEnYUF2NmTjeI=;
        b=Ka0IZ9XRqJqSMAKUpAZ/20Jaos8Y3CX3nBO5F1gGgfk7GgQ/7ujuf+ZiHtdydsaY1g
         82BtOIQaUvDtzamytjy88iEerVQMKS1snPSmXq8i5UjSdpFwOBtBW3Zo8ecmXlr0lYX8
         546+5Nv5QFuoqLOv/PBYLOIGoaMTcjO5Bfvvzjf5Rg9vo0RQazDEuVyN2eeQgkfOpxxr
         tf5c9+DkNtA4JMESGkBQ5kG9Q4zn81CysoTJHDhd/eR/056ZmBCjCamkDU8a8Z/fgDDL
         iSj+0m7Fu9VHT2O4YIoTlBI9vBw1VdNQng7viSdZpl2MbSldbqKz4YOI6DYXKLhBYIBn
         r9zg==
X-Received: by 10.194.91.193 with SMTP id cg1mr6911882wjb.88.1443635933874;
        Wed, 30 Sep 2015 10:58:53 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.239.135])
        by smtp.gmail.com with ESMTPSA id c2sm30803304wiy.11.2015.09.30.10.58.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 30 Sep 2015 10:58:52 -0700 (PDT)
Date: Wed, 30 Sep 2015 19:58:50 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: Concerning applicants who are CCing themselves
Message-ID: <20150930175850.GA13735@waves>
References: <20150930174335.GB12195@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150930174335.GB12195@waves>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 30, 2015 at 07:43:35PM +0200, Aya Mahfouz wrote:
> Dear All,
> 
> I've realized that there are few interns who are add themselves to the
> CC field in the mails that they send. I don't think you need to do that
> if you adjust your group membership settings to receive every email sent
> to the group. 
> 
> I would advice the applicants who do that to manage their
> group settings from groups.google.com to receive all the emails in their
> inbox. It will help you get important notifications from the mentors and
> threads of fellow applicants.
> 
> If there is another reason for that behavior, kindly enlighten us.
> 
I forgot to add that you can always fetch your sent messages from mutt
by navigating to Gmail/Sent Mail

On my PC I use c to change the mailbox and ? to list the IMAP folders
> -- 
> Kind Regards,
> Aya Saif El-yazal Mahfouz

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

