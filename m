X-GM-THRID: 6340039489286569984
X-Received: by 10.157.9.248 with SMTP id 53mr560766otz.146.1476292887553;
        Wed, 12 Oct 2016 10:21:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.106 with SMTP id k39ls3868402otd.3.gmail; Wed, 12 Oct
 2016 10:21:27 -0700 (PDT)
X-Received: by 10.129.56.2 with SMTP id f2mr548492ywa.97.1476292887187;
        Wed, 12 Oct 2016 10:21:27 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id x14si1012413vkd.3.2016.10.12.10.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:21:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so2402862vkb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 12 Oct 2016 10:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vhihvPH0K9kX9vwlPKa1wbWBMmkKR/B7PpUqMcWcBvw=;
        b=ber0WgKc7wVqqsqGsOcp5EBkmmJUBI0y1TVuFoCtsUfHapRiqSL0yV7VGCEHnVMr5M
         wt0ucxKQBK5lHlwk6oJ0ay4BX9zIt2B7JEbKZF33Cw8CAq6mdNh/ujnelIpWjlEHNeLm
         bgFXkOEvy+4CnrYuouWngz/FY/PvpadbqiMEigV/esz+76UGrdZhT6N3Gm7Yohml6LWv
         KZDIBHOuM8HWuww/IMg/72jFpanci72lxVMIyUx9OrivF68Bmm0d9wWoZiiT/u29YnSN
         pWBJMtrzKd+B8JHF5ZkKjbmd96QpaTF8LztC0l5BemQMufpk1nECgRqx+pgtUfp7YiF6
         QOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vhihvPH0K9kX9vwlPKa1wbWBMmkKR/B7PpUqMcWcBvw=;
        b=OObJgtgNPIM9JrLRu/wNfJ4J0zgrUp+6a8bXGe9dWRWcb5Ug4VWn4YeA0uzkHbhbwI
         I5UbJNRuSQqhauWP7FbyVYmRJwM9ORwNKSg6yMTVN2LnbnIsQj6iLZMlJeOP8xsd7I45
         AgHNqN07h86PpYvuyUBni2A72un2NtwZYay1yJ2fl0fQ1Tmb7AkpuBhxzbU5fcqJiIBI
         F/PHanhjXJwCfexsUYqTtzPN6DrFXu9v2F+9okt8cbuckM8s8Qsn/Y9yJJ4nvS8RBNEJ
         aSVMJ/HWl6iSNbyu1kcTBujxeYVv8cyvyqfHUUWVIo4K5y11W/LOk0113PdkNP/u50Y9
         f/ew==
X-Gm-Message-State: AA6/9RkXdDyt6hn16/i5o9SFVn1+VjmP2HuBKstdNfhHz1tFjWyaW7LHjmCVawlynEzaDQ==
X-Received: by 10.31.124.12 with SMTP id x12mr1191743vkc.122.1476292887060;
        Wed, 12 Oct 2016 10:21:27 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m194sm3419479vke.7.2016.10.12.10.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 10:21:26 -0700 (PDT)
Date: Wed, 12 Oct 2016 14:21:12 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: hvaibhav.linux@gmail.com, johan@kernel.org, elder@kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/7] staging: greybus: Format block comments.
Message-ID: <20161012172112.GA4296@lennorien.com>
References: <20161011031105.GA21887@lennorien.com>
 <20161012132401.GA22452@kroah.com>
 <20161012135508.GC5158@lennorien.com>
 <20161012144015.GA28533@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161012144015.GA28533@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

New version of this patch:
https://groups.google.com/forum/#!topic/outreachy-kernel/mVVbHvYAg5U

