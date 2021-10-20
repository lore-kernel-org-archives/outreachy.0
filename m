X-GM-THRID: 7021139911434567680
X-Received: by 2002:ac8:1403:: with SMTP id k3mr14821qtj.134.1634737463105;
        Wed, 20 Oct 2021 06:44:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:df12:: with SMTP id g18ls646866qvl.10.gmail; Wed, 20 Oct
 2021 06:44:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxymBnpZesGAWVUDD+cdHF90nIjYsOVF0TXnTPoTx6UFx/WHTV5H6hgQ0bryVsjN9OmEvVZ
X-Received: by 2002:ad4:5667:: with SMTP id bm7mr6279231qvb.45.1634737462178;
        Wed, 20 Oct 2021 06:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634737462; cv=none;
        d=google.com; s=arc-20160816;
        b=chAP1B+tVD1Pa3EMJkasBzH9jigSLdFrX1YZlJO+1VRW5bA6PPvvlp6G+NlBPWk8B/
         cDMQ9eYXWPb86yTbk3wP0Rwie1f/KUWbeL5/AECgKksg0H3YKJu29t8PPVI0X/jVEbJn
         jYhFSNG/yBSkWVzWznm5/SXfhKBkS642f820EhUb+9GO2WGWREHj4+17eoIXbQ2bVeVi
         Z06XgLPKLTKD450S/fIsxtzUOs/cIUDjsZU9c9XLhcV9rKQZOgdoeyCGFveqwtbgVpKu
         7hnZ97n0gpNvcvWv3MfvEQ8+zb7YYWVHOQMOZSrjiVzl3dNMGd/671PItrnfiHeZNHeR
         ypgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=krb2kuCYZFhMXsuc2aey0NmsHacGdsKqV88K4oQn4m4=;
        b=kqFucmbPjXOtQxVJV2f4rv71G+gSOee2791OBkNkXJyoGTsaL5k6kB0HTWwRzjbKWz
         ZnZTd+lT5Y0ZSV9YRxzaO0s2anGSJ/vdgE4kA7xj9wAKKzno+JzB1g9BPu3jsGrqAUHY
         bZ3BD+bHOTnlrtZyyyHe78QtH1iI9N1jWDGXzheIYs+Yq19aypUNhxWfKeW3xXKbSFvg
         XyopcFfase9dKT0vVEl2pqMgiQ4F0qu/A8E8uht2W6a3nnzcyzWaDoqoCa3bw/3pKor/
         1SNrx97Gzx2By1ROfZQBWKV/i6lORgt52giGPB6Kj2dQ8IDYc9AL6cOKgqN+lSiuP6g/
         Lufg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.107 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0107.hostedemail.com. [216.40.44.107])
        by gmr-mx.google.com with ESMTPS id s15si273626qkp.3.2021.10.20.06.44.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 06:44:22 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.107 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.107;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.107 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf12.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 6E03D181D3058;
	Wed, 20 Oct 2021 13:44:21 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf12.hostedemail.com (Postfix) with ESMTPA id 56A8A240234;
	Wed, 20 Oct 2021 13:44:20 +0000 (UTC)
Message-ID: <16db455b46f130300b5c346160aa434616e4f6b4.camel@perches.com>
Subject: Re: [PATCH] staging: vt6655: Rename `dwAL2230InitTable` array
From: Joe Perches <joe@perches.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>, 
	outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Wed, 20 Oct 2021 06:44:19 -0700
In-Reply-To: <20211020132811.417341-1-karolinadrobnik@gmail.com>
References: <20211020132811.417341-1-karolinadrobnik@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 56A8A240234
X-Spam-Status: No, score=0.09
X-Stat-Signature: oo3h5kbqswjdmb7acbiqk8tbkpj89guo
X-Rspamd-Server: rspamout02
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/eiOfcbBMvL+7NHov4EFM1SyAS5JwxoKw=
X-HE-Tag: 1634737460-597000

On Wed, 2021-10-20 at 14:28 +0100, Karolina Drobnik wrote:
> Drop Hungarian notation prefix in `dwAL2230InitTable` array.
> Change it to use snake case.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <dwAL2230InitTable>

Seems fine.

trivial suggestion:

> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
[]
> @@ -33,7 +33,7 @@
>  #define SWITCH_CHANNEL_DELAY_AL7230 200 /* us */
>  #define AL7230_PWR_IDX_LEN    64
>  
> -static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
> +static const unsigned long al2230_init_table[CB_AL2230_INIT_SEQ] = {
>  	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
>  	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
>  	0x01A00200 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,

In this file there are more than 100 uses of

	(BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW

Maybe add a define for it and substitute the uses for the define.



