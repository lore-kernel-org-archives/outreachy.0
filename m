X-GM-THRID: 6803435195586314240
X-Received: by 2002:a05:6102:2433:: with SMTP id l19mr7541612vsi.228.1584308829158;
        Sun, 15 Mar 2020 14:47:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a54:: with SMTP id p20ls1158449uar.7.gmail; Sun, 15 Mar
 2020 14:47:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsyTsNW0vljt3LzmcHFmmRM54keWQLiMb7cmj2myza1xkTM7ksTme+IdueV33NJstL2tN0L
X-Received: by 2002:ab0:45f8:: with SMTP id u111mr13409414uau.50.1584308827923;
        Sun, 15 Mar 2020 14:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584308827; cv=none;
        d=google.com; s=arc-20160816;
        b=MbHfWR6+2ZbC6DDNNtbq/2JDOKyBJfcRSlYtnYXP8QJ9q7lZ0weL2P4GEyGJUtrNMv
         MjYsTvH1pJqAZe9Gf1vVnPKawZJHxsm3MIsJ3oyx/Cyh2icf5yDr106J7xRIodheB/ej
         SD5nk488qJIBfgQ5vcvYHFagxOSfOaKfLyHTnxfRnFeKcOcwL800Y6IpeNVObockMOuY
         mPoJVzMvg/Z+lUopAnEtzf1xjFQ4cLdZ7DUnNdn4zTd5YY0XpMYiSA/OhJnfRJRFRF6D
         8S1pbN5PzSaNV/IMqTHBHmcRnCFfokYdaWhvE1JsBGpz2kzSF4dr8uGmhqZM1S4eYaHN
         2byw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=KNyCbLGbAnHjTlwzLfnqtcT6VfsEtFhAVhel7AIF5uk=;
        b=en3up6srpOhHRRBHhwteYzFUonx6mB4l/oyR0Tr3lLfUDP3b73fBawn3NwpuBT7tvL
         oHV668gkKZ1W/15wOhX79ODKRFU26fKcwV/vKdmT1OXG6mnCveNLhwxNnq9ssC/4Tued
         +7lHCR5rTs43iepvL2DMgp7lshP70WSnorpDYOqINZRqm9dR0ou82vT+YMl3m29kZMFV
         fqmNeqi/hAJw8pFOQayBJaMbI60EW1jkZks9o8uf03VJVS+MykcBIgfJSeHAKFlwJpHz
         bcYNgQvfHoJNIWgKXikDgwoif+AUMR1/i03j1kSgAqCI0NDi36YweBdtcGmnii+pg7ee
         +UqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bnDC1ajE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id i13si78818vkk.5.2020.03.15.14.47.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bnDC1ajE;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584308827;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KNyCbLGbAnHjTlwzLfnqtcT6VfsEtFhAVhel7AIF5uk=;
	b=bnDC1ajEJWahpF87bYTzqlgOdSv1ASw0tg1rKpt76CyvshzFOAgyqerD3iQyPkiNx+t4R4
	jGgS2FYYUg7RHyHAuw5zwJfX5cy0hCvAC6vhZCm/X5VWi8rAxCwnLOWVJdYQ0FrfcEgKqA
	Pa+/epKy6/1Cq20dYVSZQhb6/RNinAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-Y8gjPGFzN7C_Px6w00uktA-1; Sun, 15 Mar 2020 17:47:05 -0400
X-MC-Unique: Y8gjPGFzN7C_Px6w00uktA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 73711800D50;
	Sun, 15 Mar 2020 21:47:04 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E412B8F374;
	Sun, 15 Mar 2020 21:47:02 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:46:56 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: fbtft: Avoid
 potential precedence issues
Message-ID: <20200315224656.434ceafd@elisabeth>
In-Reply-To: <97a589cd5c311026e08380752c342be23d1cdbd4.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
	<97a589cd5c311026e08380752c342be23d1cdbd4.1584105606.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 19:14:54 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Put parentheses around uses of macro parameters to avoid possible
> precedence issues. Problem detected by checkpatch.

This one looks good to me. If you re-post, you can carry my:

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Stefano


