X-GM-THRID: 6393301758267883520
X-Received: by 10.13.215.203 with SMTP id z194mr1584974ywd.43.1488563332022;
        Fri, 03 Mar 2017 09:48:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.47.2 with SMTP id j2ls837148itj.20.canary-gmail; Fri, 03
 Mar 2017 09:48:51 -0800 (PST)
X-Received: by 10.99.228.83 with SMTP id i19mr1557245pgk.57.1488563331043;
        Fri, 03 Mar 2017 09:48:51 -0800 (PST)
Return-Path: <dan.carpenter@oracle.com>
Received: from userp1040.oracle.com (userp1040.oracle.com. [156.151.31.81])
        by gmr-mx.google.com with ESMTPS id c123si169429pfa.4.2017.03.03.09.48.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 09:48:51 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) client-ip=156.151.31.81;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.81 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com
Received: from userv0022.oracle.com (userv0022.oracle.com [156.151.31.74])
	by userp1040.oracle.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with ESMTP id v23HmiS3002909
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 3 Mar 2017 17:48:44 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userv0022.oracle.com (8.14.4/8.14.4) with ESMTP id v23Hmh0M018729
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK);
	Fri, 3 Mar 2017 17:48:43 GMT
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
	by aserv0121.oracle.com (8.13.8/8.13.8) with ESMTP id v23Hmdg9026542;
	Fri, 3 Mar 2017 17:48:40 GMT
Received: from mwanda (/154.0.138.2)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Fri, 03 Mar 2017 09:48:26 -0800
Date: Fri, 3 Mar 2017 20:48:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arushi Singhal <arushisinghal19971997@gmail.com>,
        devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
        outreachy-kernel@googlegroups.com,
        Samuel Thibault <samuel.thibault@ens-lyon.org>,
        Chris Brannon <chris@the-brannons.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: else is not
 generally useful after a break or return
Message-ID: <20170303171706.GH4132@mwanda>
References: <20170303155557.GA23744@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1703031701480.3490@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703031701480.3490@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Source-IP: userv0022.oracle.com [156.151.31.74]

On Fri, Mar 03, 2017 at 05:03:09PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 3 Mar 2017, Arushi Singhal wrote:
> 
> > fixed checkpatch.pl warning: else is not generally useful after a break
> > or return.
> > Removed the else without affecting the logic.
> > Dead code is also eliminated.
> 
> The chhange is not correct.  There is a big chain of if/else if.  The if
> (type == KT_LATIN) can reach the code at the end of the file.
> 

Yeah.  And KT_CUR as well.

regards,
dan carpenter


