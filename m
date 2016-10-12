X-GM-THRID: 6340040411169423360
X-Received: by 10.66.176.140 with SMTP id ci12mr443187pac.18.1476293041828;
        Wed, 12 Oct 2016 10:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls1567230ioe.45.gmail; Wed, 12 Oct
 2016 10:24:01 -0700 (PDT)
X-Received: by 10.36.34.3 with SMTP id o3mr1064159ito.36.1476293041428;
        Wed, 12 Oct 2016 10:24:01 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id t8si1158893vkb.2.2016.10.12.10.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id b186so2402617vkb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GlbFupoe8uRUlU+sVJqpinJ+l+pQCihYnv6ta/RasYE=;
        b=RNjvWzInGBN5DIGS8MByuIh/YhDfaBRd6x+x/DNT6y4a72TOBJOyfYq90J91NVCRDO
         yorpBbDuyCJATfg1miq8GVJYxEL6s3G06jTx3scgOirmQ24uBkNva2u3tf7ALVmoyYE1
         WrT7bS7ZULvAgqB4mIWEHbU1hn0cnhfDr8xIYBvHIyFSBoJOdxoYZXnn/BoyZeqdpF9K
         gq2Yzp3qL/NDEkMe+RL1Be+BkFBGtG82+iuionSVNnnC5TFyRMhDvQlpAI45cXF+Xt1+
         X5DMnTm4PxHtZgn/saQ29nCmWexofeOLuvlKZt06FaJodBTCNyPDbMtA5jAcbKOcTZVL
         CXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GlbFupoe8uRUlU+sVJqpinJ+l+pQCihYnv6ta/RasYE=;
        b=XosuGSBsKG5WSiNjQ6sEK8SiHEAeQI9EtXPDGP4z4v5DoxO4bsIONv8p97SsmZ711K
         xwUfluQMMiUxy1ahZkIynKd522Ubq9ncbDk7+alcUCZRk3e99KenqiwMJEpv1z2c83Zo
         WkWjC3kMpU++JgT56Qk567xKDWE0n4+5LsRpfYLPtCXTtGznPtFBU+hrdnhzLFOzxdWU
         lqbu6DdrGFaDIpl+OP6O2ONA1WMVWbrw6NSmd12W+6kSTfPdjkYc0yPXhvRVk7MqpFph
         F3limphi86b2I03eiQBX6/WcFpGDK0GI1gYhce2cXXfqYS0x0XUi33flpFPGeajA+0Ag
         yHqg==
X-Gm-Message-State: AA6/9RmQjs5U8DZ22/dIzw6YDhY5DZYRFbthq1XlWhCUh5in4N62HsnOnh1V64sutOO17A==
X-Received: by 10.31.179.69 with SMTP id c66mr1404272vkf.52.1476293041260;
        Wed, 12 Oct 2016 10:24:01 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n191sm3488320vkc.1.2016.10.12.10.23.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:24:00 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:23:56 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: vaibhav.sr@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 6/7] staging: greybus: Use kcalloc for array's memory
 allocation.
Message-ID: <20161012172356.GB4296@lennorien.com>
References: <20161011031614.GA22058@lennorien.com>
 <20161012132246.GB22338@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012132246.GB22338@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

> 
> Same issue with the subject:, it's the same as the previous patch.
> 
> A way to make it more unique would be to add the driver name to it, so
> for this one, it would be:
> 	staging: greybus: camera: use kcalloc for array's memory
> 

New version of the patch:
https://groups.google.com/forum/#!topic/outreachy-kernel/C6QYYyoxzP8

