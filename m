X-GM-THRID: 6340039489286569984
X-Received: by 10.157.18.201 with SMTP id g67mr576906otg.92.1476293639638;
        Wed, 12 Oct 2016 10:33:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.105 with SMTP id 96ls4146092ott.41.gmail; Wed, 12 Oct
 2016 10:33:59 -0700 (PDT)
X-Received: by 10.157.37.231 with SMTP id q94mr566531ota.93.1476293639309;
        Wed, 12 Oct 2016 10:33:59 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t8si1169224vkb.2.2016.10.12.10.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 2so2415801vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nzhADfxJHO8uQZoCIMXnLUsNFG9IQLgoPMfIPW8chjE=;
        b=n4VTAt50UXWj3o0LzZluSDpGLecQtYMbSn/KQPnWy2b5maq8NORIAgIot9LbNh8AzR
         NxfX1XJabskNi4L/gmvonigP3+jU5wPytmBFHwKUTIpe0BavsYCMHeXA5EgyNbrnK5Xh
         erq157ubvvDsz5lXaxovTmUyt5cAbwUTnoPQUeWJfihMzSXNB2k/XLULBP+Zj+kmx6vl
         y0MeXOzH0bJfU5G3NaeMgZL46h6lSxluiSv59JcIueMYoxTmnvCO5WZ3m7Iu8PnyqpfJ
         JlrrqODit3+aqrJnM2YJCPr32AKOS3u3aOp49G0+qxpbgQByP9YuThW5YapcW3DuxkA8
         D43A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nzhADfxJHO8uQZoCIMXnLUsNFG9IQLgoPMfIPW8chjE=;
        b=KMvXR4vJaOVabx3GlGYGf9EHOtYO167mmIUWsXa5hjGKU2D3boCBDShJXt237RQfnc
         It5WoS6vwC6vVSQEbVLJnrx6nC+yUk3i8Pa6bQnvporoHBAJSzb+jHuq2UCsf/6U/8vv
         NS17KNsuQ8mACjJZ4lnfFUQGScLWYSgddivNrBEiEpjvzcAUsOuOe1TLEO07VciWJwbI
         LB/T/BIh8AYKz2XvGCqvTv/7pTzZ+RZraqvG1TBBlPEvgtMGcDO1ixYnJpFPfLePRERx
         XeCvE4/2Kjhqz8EKdvJKRW6xAf3Vmo00/XhGEClxwqEbc939ebc/KlR9GbS7/poyDQrt
         fLxg==
X-Gm-Message-State: AA6/9RlbFKa8TMhAhFd1trpEyb9hyG86wZy4yC/WDfO1u/LdHpIp58Vf8Jj8Y3yooGVMgg==
X-Received: by 10.31.84.195 with SMTP id i186mr1200973vkb.66.1476293639162;
        Wed, 12 Oct 2016 10:33:59 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i188sm3443627vki.28.2016.10.12.10.33.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:33:58 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:33:52 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012173352.GC4296@lennorien.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012132401.GA22452@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Please ignore my last message.

That's the new version of the patch:
https://groups.google.com/forum/#!topic/outreachy-kernel/uulXIW-rOhY

I'll make sure my future patches are more organized.

