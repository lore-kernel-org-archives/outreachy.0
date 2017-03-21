X-GM-THRID: 6395900241087823872
X-Received: by 10.99.125.5 with SMTP id y5mr18585076pgc.30.1490082278644;
        Tue, 21 Mar 2017 00:44:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.184.8 with SMTP id i8ls4182717iof.24.gmail; Tue, 21 Mar
 2017 00:44:37 -0700 (PDT)
X-Received: by 10.107.133.36 with SMTP id h36mr7987312iod.92.1490082277860;
        Tue, 21 Mar 2017 00:44:37 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y90si3290739pfa.6.2017.03.21.00.44.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 00:44:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2DCBD5A7;
	Tue, 21 Mar 2017 07:44:37 +0000 (UTC)
Date: Tue, 21 Mar 2017 08:44:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/4] staging: rtl8712: Invert if statements to reduce
 indentation level
Message-ID: <20170321074424.GA1816@kroah.com>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>
 <cover.1489861352.git.narcisaanamaria12@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489861352.git.narcisaanamaria12@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 18, 2017 at 08:33:58PM +0200, Narcisa Ana Maria Vasile wrote:
> This patchset reduces indentation level by inverting if statements,
> in order to clear out the error handling code immediately, and then
> continue executing the function without the excessive indentation and
> additional else branches.
> 
> These pieces of code where indentation was improved
> were found using Coccinelle.
> 
> ---
> Changes in v2:
>   - Make the commit messages more clear
>   - Improve layout of the functions
> 
> Narcisa Ana Maria Vasile (4):
>   staging: rtl8712: Invert if statements to reduce indentation level
>   staging: rtl8712: Invert if statement reduce indentation level
>   staging: rtl8712: Invert if statements to reduce indentation level
>   staging: rtl8712: Invert if statement to reduce indentation level

These are 4 patches, that all do different things, yet the subject line
is pretty much identical.  Please fix it up to be more unique.

thanks,

greg k-h

