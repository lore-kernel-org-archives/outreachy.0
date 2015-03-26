X-GM-THRID: 9790095884288
X-Received: by 10.182.5.104 with SMTP id r8mr19108575obr.19.1427411185203;
        Thu, 26 Mar 2015 16:06:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.38 with SMTP id d35ls1040093qgf.57.gmail; Thu, 26 Mar
 2015 16:06:25 -0700 (PDT)
X-Received: by 10.140.233.84 with SMTP id e81mr18650099qhc.2.1427411184995;
        Thu, 26 Mar 2015 16:06:24 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si25528pdb.1.2015.03.26.16.06.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 16:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A752489D;
	Thu, 26 Mar 2015 23:06:22 +0000 (UTC)
Date: Fri, 27 Mar 2015 00:06:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8188eu: Add new
 variable to make code compact
Message-ID: <20150326230618.GA13601@kroah.com>
References: <20150326194125.GA25188@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150326194125.GA25188@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 27, 2015 at 01:11:25AM +0530, Vatika Harlalka wrote:
> Introducing this variable leads to overall more code
> compactness and increases readability.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
> Changes in v3: Aligned variable declaration.
> Changes in v2: Changed variable name as per
> 		kernel code conventions.

As I took v2, I can't take v3 :(

