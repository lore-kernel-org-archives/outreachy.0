X-GM-THRID: 6205025075895205888
X-Received: by 10.182.128.101 with SMTP id nn5mr29728753obb.31.1444756692403;
        Tue, 13 Oct 2015 10:18:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.179 with SMTP id f48ls4027476qgd.22.gmail; Tue, 13 Oct
 2015 10:18:10 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr29635693vke.1.1444756690537;
        Tue, 13 Oct 2015 10:18:10 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id uv4si488525pac.0.2015.10.13.10.18.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 10:18:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (50-76-40-150-ip-static.hfc.comcastbusiness.net [50.76.40.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 12B461811;
	Tue, 13 Oct 2015 17:18:10 +0000 (UTC)
Date: Tue, 13 Oct 2015 10:06:40 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] Staging: wilc1000:
 host_interface: Remove extra NULL test
Message-ID: <20151013170640.GA420@kroah.com>
References: <cover.1444719312.git.shivanib134@gmail.com>
 <a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9433e724043b5e3a1da566a95a13e94e7205851.1444719312.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 13, 2015 at 12:36:44PM +0530, Shivani Bhardwaj wrote:
> Remove NULL test on a variable as it is preceded by another NULL
> test on the same variable in the code. Also, it is unnecessary to
> NULL test before kfree().
> Semantic patch used:
> 
> @@ expression E; @@
> - if(E!=NULL){
> - 	kfree(E);
> - }
> + kfree(E);
> 
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
> ---
> Changes in v3:
> 	-Fix errors in v2 and improve commit message by adding
> 	semantic patches used by coccinelle.

This series doesn't apply to my tree due to other patches in this area
from other developers :(

