X-GM-THRID: 6473410411176656896
X-Received: by 10.223.157.198 with SMTP id q6mr1492496wre.13.1508329562741;
        Wed, 18 Oct 2017 05:26:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls793500wme.3.canary-gmail; Wed, 18
 Oct 2017 05:26:01 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TIYt4xwbtEVMzZDSWTjN5O+w0bF8Fk01maRBfvQGO2cxxrermAbaC3r3leVhirBgvBqE6H
X-Received: by 10.223.150.76 with SMTP id c12mr131310wra.9.1508329561560;
        Wed, 18 Oct 2017 05:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508329561; cv=none;
        d=google.com; s=arc-20160816;
        b=vlQDC6ECkWMXq++xuFevPpvMZwmzrcFTaMmIkeiEWJbv3PbfbFZ75qxRvXkLGHNEiH
         Axrt/Mu8f5S7PfdZCmGay4VQS2OlQPHh1rx0DNrRKxSx4bO6LKU0pnMb75qYSn/yPVP6
         Vm4Oc5qgGq3Ilu/FDablOA6HaHJKxFyENOBqAE9lRqUOUL8GO5YCjRZxcNlvtTs2ACtl
         A2ftshahMe2KFDv8dkzbaj2SuEBJfPefn1Jy6u5rht7xCq+SWKK5R6QAo5rGa9kBtQjA
         5bnwPFgWdeBdT3hTtE680NYqrINhjjgMZ7rYO/3xTm1HtI82zmw0m5+eQnzurphqEDcg
         tsxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Ex1N8kypBuyaHdY4KVmEVso60sXom464UOhsqVr8Z7E=;
        b=p6sZq0UCJHJklQSROZnfOaRS+PGvBcxUEGYpB/aI0Wzug8LMB2lUtnqzwpVrPhpIJR
         Mk81FMWcOCUbDhgmPu1hSq/6EBnq/lIp4HdHbx85jDcO5AVyPVDqtDKoAW9SmujuoRLy
         OCEDxAQe2dw7LeW5LBeJY3k1YGxdJNIuTo3SqnbLUG2MqSvU0XqHaPbnJmHqKMBeGq1N
         lxxfA1sF5Z0lIS3oPukCQ6jqNKw+DS66GC1X443ziTsyyD6Pyl4dhmzRI6BoRnseXnOK
         P2u6SOLc9wHRUbCC2rqIbBNwZbFs/AlhJZdDJ8WlGWMJTdkvfw2OmgB/dO82k1XtFyXo
         Km8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r65si445137wmf.2.2017.10.18.05.26.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CD9B6B1E;
	Wed, 18 Oct 2017 12:25:59 +0000 (UTC)
Date: Wed, 18 Oct 2017 14:26:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH v2 00/10] staging: lustre: fix code styling issues and
 remove macros without users
Message-ID: <20171018122608.GA3174@kroah.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Oct 12, 2017 at 10:01:13AM +0530, Aastha Gupta wrote:
> These patches fix:
> - multi line comment styling
> - line over 80 characters
> - macro definitions warnings by checkpatch.pl
> - drops macros without any users
> - Comparisons should place the constant on the right side
> 
> This patch series includes all the patches I sent for this driver to
> show the correct order.

This patch breaks the build in lots of different ways :(

Please ALWAYS test-build your patches before sending them in, otherwise
it makes maintainers really grumpy...

Please fix and resend.

thanks,

greg k-h

