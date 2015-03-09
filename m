X-GM-THRID: 7165229137920
X-Received: by 10.236.2.35 with SMTP id 23mr26263483yhe.22.1425904540847;
        Mon, 09 Mar 2015 05:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.213 with SMTP id 79ls1394339qgn.12.gmail; Mon, 09 Mar
 2015 05:35:40 -0700 (PDT)
X-Received: by 10.236.111.4 with SMTP id v4mr28542676yhg.55.1425904540619;
        Mon, 09 Mar 2015 05:35:40 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1772812pdb.2.2015.03.09.05.35.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 05:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (li684-192.members.linode.com [23.239.3.192])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EEF2F982;
	Mon,  9 Mar 2015 12:35:39 +0000 (UTC)
Date: Mon, 9 Mar 2015 13:35:35 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Himani Agrawal <himani93@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Breaking function
 calls
Message-ID: <20150309123535.GB31892@kroah.com>
References: <20150308181638.GA4606@black-dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150308181638.GA4606@black-dell>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 08, 2015 at 11:46:38PM +0530, Himani Agrawal wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: line over 80 characters

Your subject makes it sound like you are breaking the driver.  I suggest
using different wording of it.  Care to fix it up and resend?

thanks,

greg k-h

