X-GM-THRID: 6264490857152380928
X-Received: by 10.129.48.76 with SMTP id w73mr23247560yww.33.1458611565490;
        Mon, 21 Mar 2016 18:52:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls4624683qge.71.gmail; Mon, 21 Mar
 2016 18:52:44 -0700 (PDT)
X-Received: by 10.159.34.65 with SMTP id 59mr2653172uad.4.1458611564528;
        Mon, 21 Mar 2016 18:52:44 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si4401261pac.1.2016.03.21.18.52.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 18:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [38.111.11.2])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0335492;
	Tue, 22 Mar 2016 01:52:43 +0000 (UTC)
Date: Mon, 21 Mar 2016 21:52:43 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Svetlana Orlik <sveta.orlik.code@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ioo: ad9832: Replace
 'unsigned' with 'unsigned int'
Message-ID: <20160322015243.GB27510@kroah.com>
References: <20160321153351.GA16781@pal-comp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160321153351.GA16781@pal-comp>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Mar 21, 2016 at 06:33:51PM +0300, Svetlana Orlik wrote:
> Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.
> 
> Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
> ---
> Changes in v2:
>   Send patch using mutt.
>   v1 patch was sent using Google Groups web interface.
>   Not sure it works.

Not sure what works?  The subject line still is incorrect.

Did you test-build the patch?

thanks,

greg k-h

