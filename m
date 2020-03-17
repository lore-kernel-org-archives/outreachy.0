X-GM-THRID: 6804292371114622976
X-Received: by 2002:a67:c10f:: with SMTP id d15mr3552255vsj.7.1584449120183;
        Tue, 17 Mar 2020 05:45:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:8797:: with SMTP id j145ls140554vsd.3.gmail; Tue, 17 Mar
 2020 05:45:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsWGkq+kHTZ3/qf2a0SSyskpN51S5amT3MgQDupRUKcsZ97chcgPtQSEWtMfW2FfkVxwDwM
X-Received: by 2002:a67:d706:: with SMTP id p6mr3317866vsj.143.1584449118515;
        Tue, 17 Mar 2020 05:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584449118; cv=none;
        d=google.com; s=arc-20160816;
        b=uoog+4MvD6Aw9KnQhFyjZOwFsrOVkDe4zsRjC3szspE93rxc4TlhMXi8296mx185SA
         rqd6bU2zkDcuOPHIghRsnfgzhInHmDAiuttzkIZo/cyjcrNPrO4Qd7g4MTuszpF3Q4GW
         IvMnusBRQm3y3F6IS5fIpuObLLEIqtvkBq1iuWfTvV0OT9HRLliZw8Gs9MAOUoxG4Dby
         9wdXn7QN8ycSl1rBtipcuBJN9/kwDj07e6XWclR9faJgzpN87qWv9+nVFJYWgMbjDHJu
         GURFRIKCPYVpF/VLMawicMLr8pnVvMHH/rrBgmPP/gegemRIPPHumx+kKofivpZzdMsG
         oCfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=5/dNpvDm8MskbUSAtnqme4VpzrBqrR900j/EqlxsdWA=;
        b=l+n8zPDj3KQWXIURAgqkc+YaCdlo5YqNB7tgRhFMy85s/a/EjHjg2Y1LAJikM5XRl9
         hk8rL11gjX8XE7OA8ZkjDcnGcsDLHL2Ur+kUrQf6BLgjtpjFDO2KqicEdyPAUxoZI/ZA
         ebdO63vBgRFLDcQMK2qGtyifzqlf7AuaC6jS8i0uzVRpeFYQgzlU89m9LtlKwIRKo5Yc
         7r8K/9XE40Zo+ROa70mexqVTLpNM4L/FS5ivixcjlsosd3GanaW5qbPsxr2PGpF4x+TI
         y/mSjJiUuqtEFKzvmNVtRDMNt+0S55f2wVPk0nZu6lxUCc8FFCDd9SM85jA+519bH/Eu
         X5Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fSmAiDqr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id z26si71071vsp.1.2020.03.17.05.45.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fSmAiDqr;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584449118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5/dNpvDm8MskbUSAtnqme4VpzrBqrR900j/EqlxsdWA=;
	b=fSmAiDqrPtbePMf1HJFOr6GBnoIyxtFZTirMR2l9bpa9WYqLdAVE8+H91rbWjCRyWJr2da
	bKgX4HFvzVkqgJQE5FvSHXgc4dm5Ie0U8pbc45lo0cMhvq8HnQ0Y6QFevIQBqTRue+F6F3
	gFX7BewQ1yp/iOflomt5Iurtey7sOYo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-jm8_CChYODKwx_Odb2ipZQ-1; Tue, 17 Mar 2020 08:45:16 -0400
X-MC-Unique: jm8_CChYODKwx_Odb2ipZQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38022107ACC4;
	Tue, 17 Mar 2020 12:45:15 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EC5719C58;
	Tue, 17 Mar 2020 12:45:12 +0000 (UTC)
Date: Tue, 17 Mar 2020 13:45:05 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Lourdes Pedrajas <lu@pplo.net>, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, jerome.pouiller@silabs.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wfx: remove unneeded spaces
Message-ID: <20200317134505.2e417b36@elisabeth>
In-Reply-To: <20200315044922.14249-1-lu@pplo.net>
References: <20200315044922.14249-1-lu@pplo.net>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 15 Mar 2020 05:49:22 +0100
Lourdes Pedrajas <lu@pplo.net> wrote:

> Remove spaces after type casting operators in order to comply codding

with coding...

> standards.
>
> Issue found with checkpatch.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>

Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

By the way, question for Greg:

> [...]
>
> index a60ac03fa73d..07a9991929fd 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -903,7 +903,7 @@ static void wfx_update_tim_work(struct work_struct *work)
>  int wfx_set_tim(struct ieee80211_hw *hw, struct ieee80211_sta *sta, bool set)
>  {
>  	struct wfx_dev *wdev = hw->priv;
> -	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *) &sta->drv_priv;
> +	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *)&sta->drv_priv;
>  	struct wfx_vif *wvif = wdev_to_wvif(wdev, sta_dev->vif_id);

Will this eventually have to conform to networking coding style? At
what point in time is this stuff checked, if at all?

-- 
Stefano


