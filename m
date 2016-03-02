X-GM-THRID: 6257136391143030784
X-Received: by 10.182.87.2 with SMTP id t2mr22737697obz.20.1456944608241;
        Wed, 02 Mar 2016 10:50:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.100 with SMTP id i91ls4378373qgd.66.gmail; Wed, 02 Mar
 2016 10:50:07 -0800 (PST)
X-Received: by 10.13.192.134 with SMTP id b128mr22597103ywd.43.1456944607623;
        Wed, 02 Mar 2016 10:50:07 -0800 (PST)
Return-Path: <bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id i133si2395792ywe.7.2016.03.02.10.50.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:50:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=TViU1H9QR17s7GY66fH7/RcB/ik=;
 b=b8LkEPouVRK4vtvSHFGCfg0lVCCM6Ni15BjVYsWCUzQ1gLWGqb3RbY0hi5lv7DL/wrXI12auM4kx
   o6izWXDvfhSPJwGkF2/A9/n2rSwPkcR7OQOoVDcBahnjXHP7IZvIK2Nq8x9MyrNB2j0dAlBGfHke
   RUDkwIEHt5CA6MzQY1E=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=cU5G2k3H/RO1TKEwgqQ9DEZ/J4PUtTxFLFYnuY10N4Qc3QrUQXH471ThN8Iwk1EOeiznfpVhNLaw
   7dkSsElZioxgWkvazvR9+lQZNI0aXSIYnmPW3EyrPP+kZTveLBsy+Q/2Q6+kIKdsI5EqDib4iuUU
   z9RvDF7gIT4IxX8J2tQ=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqtu174no3 for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:50:07 +0000 (envelope-from <bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944607; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=WNphQ7aVSM+C3us7/sF606KL/AziKoPFEJmnG22k6ak=; 
 b=KvZ7p2Ia9NMm2x5dnTQzez9oHgMKupzAOxbm0hxkTvvIchCoAEQx6iWB9NLW4BB8H/YUc0
 d9TFJ9CJM479Uk/+WlbASll4Sgvh6R7sIbMuTAWATGmGUbyab8vhGzpuC8ZHbzbBk7qA3Zs3
 cJdfBpH9LWiKE7ETbb8U/TSZGT0hI=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: mdc: Remove unused macro
Return-Path: <bounce-md_30481620.56d735df.v1-fb3dcbd3c3c54a09837fbb138657da22@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id fb3dcbd3c3c54a09837fbb138657da22; Wed, 02 Mar 2016 18:50:07 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033435.GA20937@kroah.com>
References: <20160301172205.GA19758@Karyakshetra>
In-Reply-To: <20160301172205.GA19758@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.fb3dcbd3c3c54a09837fbb138657da22
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:50:07 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Tue, Mar 01, 2016 at 10:52:05PM +0530, Bhaktipriya Shridhar wrote:
> The macro mdc_unpack_acl(req, md) is not used anywhere. Hence, removed
> it.

It's used, in this very file, please be more careful.

