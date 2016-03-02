X-GM-THRID: 6256371025364123648
X-Received: by 10.140.97.244 with SMTP id m107mr2597869qge.20.1456944457746;
        Wed, 02 Mar 2016 10:47:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.78.200 with SMTP id d8ls594831igx.35.gmail; Wed, 02 Mar
 2016 10:47:37 -0800 (PST)
X-Received: by 10.66.191.230 with SMTP id hb6mr22560820pac.25.1456944457334;
        Wed, 02 Mar 2016 10:47:37 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id q187si2324325ywf.4.2016.03.02.10.47.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:47:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=kiPs7mxrD0mHDJqUZrOPhY77rtI=;
 b=my0QK0skrM8zFsBj0az3s3mjVnGy8D9o7+8WlLBx+RHssY9Z6khOgltyuovkhpbFS6srbXvCU/Sr
   hDW6cIBlo/pkWaBPvjmRmn4w2YXivWjzO5Su/PaQqkFFVQYf7HpFp9hdyWixyxXwCztN8Jef9W2h
   RgPTVHDO1zmBydx50J0=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=byUNEOtRFejiMsNuGebcE1e+cR8+bNNsfRRqR4hG6L3aIrau366ro4qKus6Uq7StaRKS29FVtiqz
   1UZixzToAYyHNlAQpcbB51DjP7v7PLn+R2ye54vWbn+uCzjHt2ErOXs+q/hy9CtiTP5UksclsFzQ
   x8kCj452uXmesbqku0A=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqki174no6 for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:47:36 +0000 (envelope-from <bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944456; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=dN/ZwKc41Xf1g9aU760OLWXLK8n3rPYTW7/ZqUP9jk8=; 
 b=pgRmQ2GWGrdJp018RPbvwRyDWWhwzM630l2loRyO7f2lOJ50blE6KGjO5zVNc08e/KeTL7
 EJrzj2rNLZlV1WsVmdEBBftWnJlNak5y11K9rajFV3qH2aEz7SmNkNnBERdFZzOK0mLEVg3u
 sUecxh02WJTYkecx52fm6qzHxslUQ=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: lustre: lov: Prefer list_for_each_entry_safe()
Return-Path: <bounce-md_30481620.56d73548.v1-7f91e18ea07a472e8ab89b35bd5ce92d@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 7f91e18ea07a472e8ab89b35bd5ce92d; Wed, 02 Mar 2016 18:47:36 +0000
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032622.GA6892@kroah.com>
References: <20160228205401.GA7543@janani-Inspiron-3521>
In-Reply-To: <20160228205401.GA7543@janani-Inspiron-3521>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.7f91e18ea07a472e8ab89b35bd5ce92d
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:47:36 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 03:54:01PM -0500, Janani Ravichandran wrote:
> Use list_for_each_entry_safe() instead of a combination of
> list_for_each_safe() and list_entry(). Also, remove declaration of
> variable pos, which is no longer used.
> 
> Semantic patch used:
> 
> @a@
> expression pos, n, head;
> expression mem;
> type t;
> identifier var;
> iterator name list_for_each_entry_safe, list_for_each_safe;
> @@
> 
> - list_for_each_safe(pos, n, head)
> + list_for_each_entry_safe(var, n, head, mem)
>   {
>    ... when != var
> -  var = \(list_entry \| container_of\)(pos, t, mem);
>    ... when != pos
>   }
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

One, or more, of your patches in this 9 patch series (why didn't you
number it), breaks the build :(

Please ALWAYS test build your patches.

greg k-h

