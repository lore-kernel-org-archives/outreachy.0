X-GM-THRID: 6806184818941886464
X-Received: by 2002:a17:902:8bc7:: with SMTP id r7mr11611521plo.12.1585553700929;
        Mon, 30 Mar 2020 00:35:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:c9:: with SMTP id e9ls11429257pfj.10.gmail; Mon, 30
 Mar 2020 00:34:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuY51lRHugj7ltAVwfC2A7a0iUVp8L3+Xp/O8YhFgo++UNJ7yL8SMEGeEQC0u92m22zajfG
X-Received: by 2002:a62:4ec4:: with SMTP id c187mr12116130pfb.223.1585553699548;
        Mon, 30 Mar 2020 00:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585553699; cv=none;
        d=google.com; s=arc-20160816;
        b=UtPBtT24GqrKHRF0gxtl3c+GT0daYbudu/mOW3M8430uQJ0uW0Cpg4gteAeK+KbBYh
         xi/EVEqE/fU8IFcH6KrttLqYa62gveE5Xm2Ea5c9ZmE9pZ87P+lSEkrjFVQVIvO7gw0u
         0sfpVI0y8OIFx8+qhBg5dxGYwd5ClOlBfsjJKDMxkwXkMrCWE5Y3C3XTNfLk+fxJSgv9
         CJeO1X1fxXmGFB3T04suGus6PpGDjAy7z/aLd/mw7o6kFfgo56HrYoGKHr0mOmwYPI8u
         HX09Ba2TwrbmNC4LFlVn5AS4zoalFiygkvbX6E32AXiFMbl/84fcKsUXckQn0tTnzjx6
         lhww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=h3SQbY6aLe4015TFu/1sFQgARySxrMnF5HvjVPulwIA=;
        b=Up3mzL68Sf6NfMnuu/mD/0s25GgyuHKbbWj9nup0qzw7Ojz3kzBl1CsW6UmU6aDPxW
         QTdDOVwdK9kxCZrNW9ZbQIi/00lhaDzHRnyYeEdNA53D4l9ITTQyS2Ud0nwN5GqvHGn+
         CP6p7gqd6dpqu2aZsfaGBaKqL/s+MwVaF3dfI8iNF+Scv6up5Fjoe6fTQFWux3AfHUA2
         yHj7f+hhPVVHPu+0qalsGRJd4UyNLfVN5N1ND38A4JuxrV+NxxI/wLxs627yQy1QkHsM
         H4Nym/tMA3Jsh7Yqp4mheVCV+xljG5ytAppN78wJXfTSP3ha+l5AvwusUkNitYMDySJa
         Wbgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ehpO0onT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id x2si589227plo.0.2020.03.30.00.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 00:34:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ehpO0onT;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585553698;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h3SQbY6aLe4015TFu/1sFQgARySxrMnF5HvjVPulwIA=;
	b=ehpO0onT5Nye7K9DmD3zXDQYud1hj1CIT2VqPCvjYv12XE9GuSnHBWqc3JEFc2v2tU+7SQ
	YM+lbOmzgM9r+jQsGgPu1VZsVKJCAYiBcjkCHRbK6yWiyJE8LBd1SCSDWogAgQKwPmSM9q
	zHgH8n+LfqkpNNCwuJEGCe/2VJdn33o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-4X_rE3gNNoCpt27ZsqpwhA-1; Mon, 30 Mar 2020 03:34:56 -0400
X-MC-Unique: 4X_rE3gNNoCpt27ZsqpwhA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9447E19057A6;
	Mon, 30 Mar 2020 07:34:55 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B08210027A4;
	Mon, 30 Mar 2020 07:34:52 +0000 (UTC)
Date: Mon, 30 Mar 2020 09:34:47 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Correct
 typos in comments
Message-ID: <20200330093447.70b35039@elisabeth>
In-Reply-To: <20200326143023.13681-1-vkor@vkten.in>
References: <20200326143023.13681-1-vkor@vkten.in>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 26 Mar 2020 20:00:23 +0530
R Veera Kumar <vkor@vkten.in> wrote:

> +++ b/drivers/staging/rtl8723bs/hal/odm_debug.h
> @@ -13,7 +13,7 @@
>  /* Define the debug levels */
>  /*  */
>  /* 1.	DBG_TRACE and DBG_LOUD are used for normal cases. */
> -/* So that, they can help SW engineer to develope or trace states changed */
> +/* So that, they can help SW engineer to developed or trace states changed */

Now, this doesn't make the comment much clearer, but I think "develop"
was intended here (it goes along with "or trace").

>  /* and also help HW enginner to trace every operation to and from HW, */

and while at it, you could also fix the typo here.

-- 
Stefano


