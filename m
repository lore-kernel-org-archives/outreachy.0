Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E82A79C7
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 09:01:51 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id j13so14938799pjd.1
        for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 02:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679389311;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vghuqXMkFVFNTB0pPARMrs1cE2JrLOrTO0PI0iyk9Ho=;
        b=N+6NmiKJNJo+zQee/w5OTkT8RrQax8a55r7JxP/OYiSPWjgXLTz7C59W1QVAFmIzaJ
         J7wD5Hl7F1PnoFKZr/FJthEBcBjA8svOp0/pYc7Oix+QOEalwyy8O9Z/0Vzk2rGi0w/7
         bi9vAim7OFHHrTU3p52yVyTA+nzGCGILwfbUnh1Ljy5as3PVO7OKJvAUDwLnxoqx59bm
         6jspsu4+Z9aQntZyJho5kYP+8GymSi7IsaG1/tMfJ2cu3riRcTtNa4hmDTx/bc2xV28g
         F6sNP2PhcLV0SweRwuE3uDspstsYBTELyzTAi/hBFNhP8xdbCJGibqlr0Y2idmdr2Mla
         sczg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679389311;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vghuqXMkFVFNTB0pPARMrs1cE2JrLOrTO0PI0iyk9Ho=;
        b=hEZxtINZYOQ6aYj3949bIRXwPtFkTed6cYoPka25HDaRTRAuvZZAKB4OfzyoQ6TrMf
         6zi7RKO1KnJcHqIPUYKlUCdrUsSanxPZpo71FkRLV2wEoWKLOWu/HH23NNtrXJmyVy/m
         BwztZxPQz3u1XoDcoh33fqO9Q2GTsakgWg6pNu64z2fT293Md8vrn7NQ2/YwstSP207x
         P4vasWwBQHrJK+ipXz2+l+NfY/pwKu5bXYlVL/5CLYGgyLTIGpdYAF4Fg8qpR04/OKc5
         yatQCV/Bi5Rhyr5TpCMEDvPeICrZFQSaUe+RI8hqtQsXseWgesbmwLnmTCzkasSrQlll
         RGlw==
X-Gm-Message-State: AO0yUKVzgJHbN+O/fl2kXCBol8suk2yl9zPMilfBqlJRwlJJ35LAKWZA
	vSkomrBlovWeqa5/IlZOtdZdiEQjF+9nOQ==
X-Google-Smtp-Source: AK7set9QzK4k7il8JDRXUCkPValIhFD3oKWFKM4zMvQcOzjH4d1lr7G36CgQh3sSQ8imlYL9FKmbpQ==
X-Received: by 2002:a05:6a20:33a7:b0:d9:825a:1410 with SMTP id f39-20020a056a2033a700b000d9825a1410mr1282939pzd.54.1679389310441;
        Tue, 21 Mar 2023 02:01:50 -0700 (PDT)
Received: from sumitra.com ([210.212.97.176])
        by smtp.gmail.com with ESMTPSA id c26-20020aa781da000000b0058173c4b3d1sm7694595pfn.80.2023.03.21.02.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 02:01:50 -0700 (PDT)
Date: Tue, 21 Mar 2023 02:01:46 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: ira.weiny@intel.com
Cc: outreachy@lists.linux.dev
Subject: Re: Code cleanups are not always simple.
Message-ID: <20230321090146.GA134679@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>

Hi Ira,

I will surely going to take care of the things you mentioned here. Thank you.

Regards,
Sumitra
