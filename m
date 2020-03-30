X-GM-THRID: 6808532332710985728
X-Received: by 2002:a63:484:: with SMTP id 126mr12365628pge.161.1585555182365;
        Mon, 30 Mar 2020 00:59:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:98de:: with SMTP id e30ls11500266pfm.0.gmail; Mon, 30
 Mar 2020 00:59:41 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtGZuQhuWDxrzNnqYODq7bipRxVmO90VPVtB5HUIDpwbyNamH7iINqxMtwSk91d7yDX7yTk
X-Received: by 2002:a63:334a:: with SMTP id z71mr12187109pgz.305.1585555180974;
        Mon, 30 Mar 2020 00:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585555180; cv=none;
        d=google.com; s=arc-20160816;
        b=NkOj3agsK/hVLXt/kvu/sb1ymj9HsjEpfVLer3eMzw6dscWTtL7juzM+A3HDB8PQ+V
         Y3ftwYx20ST9be+w9RPRb6U/0h+U4jXgYvk5TyITMbMXgjw0klOqWnOUmcd2yzIFH221
         E+bNtapHJ6JEKBj33zoVwwRAWmjoByXWxdb9H4FaOgctsqJ19jJgCS9PDJ8ZxkUiGqoE
         CJ+7YsgH4KvfTGyvjiD7F/xbLyxffO6sD8eowqeX2PbIZho6CPhGSF2VBM59ywBNDnSV
         Z73GmG0JhMoe/TNiXNwE1rD8hZEb85zQJlFcIFpO/S8FXRskluKCGS7Ui0MCP5g5h1Lf
         zCwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=aXPQNor0pIxpyV5Qk/QE0n5ci9nQub8yLxREFfYECDY=;
        b=xfGMhwyi+kiYqu7TmXZNulEoeeqeL0Rt3hQiwJdF4tYF74mXC3rphXkMGQBovIURW4
         f2OBno+hEWEp7ycn/+SbzbcM2BayaGgciUR6xlxiwHR/xZpDIPoNrJjQsdP+5uIHavPj
         zJfynM1QaKhEo9WkBHWOMnulfPv1CWIcMYEmytlckAaml8A9PCs7LOCO+dto6H+JEjfF
         SdxYF+MuzS+z9WExlTY4C8/wp7xfEFXQnGTvS3EZaTDwNOmZlDTUhzPVOI/ciXIQQx33
         XYJyhxduNXxRLwwR2A8UlXzCKlfNxwWe9LoHZN5q5MMjkcDgQRTatpGhwgzk2+KX+jW/
         ICkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RnJPtiQv;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id x12si798344plv.3.2020.03.30.00.59.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:59:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RnJPtiQv;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585555179;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aXPQNor0pIxpyV5Qk/QE0n5ci9nQub8yLxREFfYECDY=;
	b=RnJPtiQvW8qX46gVIDN0tY3qXX+lyACupsexyT5RpyILGmGjvlYgllnaauEh0yYWYLzYeC
	N76sVu+Ap6XrSClOyYa2q5NtVMmqdHYsOs8eR8nAXUzo6Pn+wHSojYe1JoaEavp1uU2ido
	2gylctoqBrx/MixOoh4lv05DknAzk70=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-lzGLbHOdMcunMGy_OvCEAg-1; Mon, 30 Mar 2020 03:59:37 -0400
X-MC-Unique: lzGLbHOdMcunMGy_OvCEAg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7609800D5C;
	Mon, 30 Mar 2020 07:59:36 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C97BB5DA66;
	Mon, 30 Mar 2020 07:59:33 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:59:24 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: rtl8192u: ieee80211:
 Use netdev_dbg() for debug messages.
Message-ID: <20200330095924.4824f330@elisabeth>
In-Reply-To: <84dc7e33954509457efce2a35fb293e631845a96.1585233434.git.jane.pnx9@gmail.com>
References: <cover.1585233434.git.jane.pnx9@gmail.com>
	<84dc7e33954509457efce2a35fb293e631845a96.1585233434.git.jane.pnx9@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 26 Mar 2020 11:02:35 -0400
Sam Muhammed <jane.pnx9@gmail.com> wrote:

> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_wx.c
> @@ -436,7 +436,7 @@ int ieee80211_wx_set_encode(struct ieee80211_device *ieee,
>  	if (ieee->reset_on_keychange &&
>  	    ieee->iw_mode != IW_MODE_INFRA &&
>  	    ieee->reset_port && ieee->reset_port(dev)) {
> -		printk(KERN_DEBUG "%s: reset_port failed\n", dev->name);
> +		netdev_dbg(ieee->dev, "reset_port failed\n");

I guess you should stick to 'dev' here -- it's the same as ieee->dev,
but reset_port() is invoked on 'dev', so it would be less confusing.

-- 
Stefano


