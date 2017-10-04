X-GM-THRID: 6472991965630693376
X-Received: by 10.28.54.84 with SMTP id d81mr1258661wma.21.1507115339314;
        Wed, 04 Oct 2017 04:08:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.50.138 with SMTP id y132ls3296925wmy.9.gmail; Wed, 04 Oct
 2017 04:08:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCNcUQfAwdC6oljS4rzuJghbTlqZQsUDIJkXA8VZf7Kp/ECTNP0HkANsW6aYJu11Gk6ixR9
X-Received: by 10.28.230.198 with SMTP id e67mr2401833wmi.24.1507115338352;
        Wed, 04 Oct 2017 04:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507115338; cv=none;
        d=google.com; s=arc-20160816;
        b=qOMv0hWwkpCpW+HhTRHoy360+shDrTF6rpHlHYyDZzQiQs3P3ZInAsHIkvx5kIwS5V
         k09viD/cFZtfkZFsRIO98cLGrqJ3PzHpapeP3RIB3+V2x5cFJCJ3cMU3iuEMB7RC5BYI
         d+bgas8IDekEgwMh7Cg3KHii5+WjpUJCxXAWdIdShTn7l89Pq9QknPDq7PCBeJ8Cw74w
         uH/mcmDL6GZfDD28OZ9H2hl96uCDsMIhcOwZU93EoDs/Ata/T01I19X8FMgFcP5vl+ws
         5w9oiziqGcSk7lUTlNUPOZePYAzh6eqwD5HmwAzTXc3/PEQozAqEVhZxlguCHPoNkGOR
         UGNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=suORdUHv2wDtUXZ1EcLXR7mGsglRrFkt9BV4HJzS8+s=;
        b=JrGVqClfrrjG7QeETeyIYxKMT0QbBBJyqMtciFLQlf7LP5ZBfUwcDbKL9GeEZli4pv
         xzujBNMCfD/sb75wjzkZC1StUfreFdrjW2gCgtWAuH97wDjxtwrVViGha/VWylb73nwR
         d1mIrcWQajMPj7zToJ6f70GfqDrFuCPw+3I7URaCUq38VgdZGd8l9fJ8fJ36snLwoH9L
         7JrrqISRIbrTojRIOMaaUfGYy2U9lhPdoI/KiiYvfgCBNQgTHL85KNVAFRODJSGi1/X6
         PhOYvIBUgKuoSd/63HDOtO8fwI+6c5yv85kKWu/ltl2gZ5nCgR84qaZofnZCRetR9a3m
         TBPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Return-Path: <pablo@gnumonks.org>
Received: from ganesha.gnumonks.org (ganesha.gnumonks.org. [2001:780:45:1d:225:90ff:fe52:c662])
        by gmr-mx.google.com with ESMTPS id h17si1874637wmd.0.2017.10.04.04.08.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 04:08:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) client-ip=2001:780:45:1d:225:90ff:fe52:c662;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pablo@gnumonks.org designates 2001:780:45:1d:225:90ff:fe52:c662 as permitted sender) smtp.mailfrom=pablo@gnumonks.org
Received: from 129.166.216.87.static.jazztel.es ([87.216.166.129] helo=gnumonks.org)
	by ganesha.gnumonks.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2)
	(envelope-from <pablo@gnumonks.org>)
	id 1dzhXp-0006Lo-7U; Wed, 04 Oct 2017 13:08:55 +0200
Date: Wed, 4 Oct 2017 13:08:52 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: nftables: Add support for unsupported codes in icmp and icmp6
 extensions
Message-ID: <20171004110852.GA2575@salvia>
References: <1507110760.6328.16.camel@harryPotter>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
In-Reply-To: <1507110760.6328.16.camel@harryPotter>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: -2.9 (--)


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Harsha,

I would suggest you start with a more simple task:

Probably you can add one test for named objects to our tests/shell/
directory under nftables.git tree.

I'm attaching a couple of examples. Please, have a look at
nft/tests/shell/ directory.

Thanks.

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=nft-limit-name

table ip filter {
            limit http-traffic {
		rate 1/second
            }

            chain input {
                    type filter hook input priority 0; policy accept;
                    limit name tcp dport map { 80 : "http-traffic", 443 : "http-traffic"}
            }
}

--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=nft-stateful-objs

table ip x {
        counter user123 {
                packets 12 bytes 1433
        }

        quota user123 {
                over 2000 bytes
        }

        quota user124 {
                over 2000 bytes
        }

        set y {
                type ipv4_addr
        }

        map test {
                type ipv4_addr : quota
                elements = { 192.168.2.2 : "user124", 192.168.2.3 : "user124"}
        }

        chain y {
                type filter hook input priority 0; policy accept;
                counter name ip saddr map { 192.168.2.2 : "user123", 1.1.1.1 : "user123", 2.2.2.2 : "user123"}
                quota name ip saddr map @test drop
        }
}

--jI8keyz6grp/JLjh--

