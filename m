X-GM-THRID: 6256340731045085184
X-Received: by 10.107.132.73 with SMTP id g70mr28356464iod.4.1456944530369;
        Wed, 02 Mar 2016 10:48:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls3837017qge.36.gmail; Wed, 02 Mar
 2016 10:48:49 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr22387904ywp.33.1456944529715;
        Wed, 02 Mar 2016 10:48:49 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id w126si2129233ywe.6.2016.03.02.10.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=il07HjB01uIkMwko/UY95XRIg9E=;
 b=UnPqb9f5FQQJ6rz26gdGMPqE323cDeETZ5Zc58G2lytdmPQZxYCwv9Y9Kn8ABEJg0nbe93TMI24l
   XZL0+1sKx86pEm/RVYjJdGt0+WD0fK1sTXnnkjhJwJk1KaHjP5mOseIozTpJwdObxmOKouIS/C4t
   ApVOVd97nW6LMoo1JDk=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=ELBHTuPM35npg5yoVapxPlivQiyvwauxEVNcfJwBPfhgc1sFbNb6ZzgNJtEKCU+eIIKMxTMskV8q
   1JvLN2OgsZrEgh5sTh4bE5zgsGio8jeRWCRZTxHJAgqJIx/CTiBnQOagvoYxhnLoUImLWe8uXE4f
   XrSnGjg7STFt/Q9y2dM=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqp2174nor for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:49 +0000 (envelope-from <bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944529; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=N3gW9BAVVeOiTndaO4Unz0nkjUWGjqnrvUkK/vQ+UOw=; 
 b=GZ5AYyVZEFQX465M6S05PFuSU3obq20QcSdti4H7swKaelHiNr6Gu6oCyKql6FKg2mxchK
 ve6xQ2Y38+68/xkyFFUN/1RZ0bdQ8uofH79fZtBZYCsvFCxPoL+xG2Oh9Mnx6iiQlXwxRG2G
 QkLQuYn6p5H/W4HennqnZ+J121COY=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Use list_for_each_entry_safe
Return-Path: <bounce-md_30481620.56d73591.v1-4e9f522662dc45e7bb3635edb9e64113@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 4e9f522662dc45e7bb3635edb9e64113; Wed, 02 Mar 2016 18:48:49 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032430.GA29474@kroah.com>
References: <20160228135431.GA18987@Karyakshetra>
In-Reply-To: <20160228135431.GA18987@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.4e9f522662dc45e7bb3635edb9e64113
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:49 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 07:24:31PM +0530, Bhaktipriya Shridhar wrote:
> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
> 
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
> 
> This was done with Coccinelle.
> 
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
> 
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/lustre_peer.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Does not apply to the tree :(

