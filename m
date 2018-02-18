X-GM-THRID: 6523882080322977792
Date: Sun, 18 Feb 2018 05:46:46 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e77d9c11-8e6a-410f-a58d-f57907b86ce8@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1802181420580.2777@hadrien>
References: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com>
 <alpine.DEB.2.20.1802181420580.2777@hadrien>
Subject: Re: [Outreachy kernel] [SETUP] Difficulty with dmesg
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10250_90839243.1518961606444"
X-Google-Token: EMaHptQFy0ZSOmJl_tc0
X-Google-IP: 125.22.40.140

------=_Part_10250_90839243.1518961606444
Content-Type: multipart/alternative; 
	boundary="----=_Part_10251_1092113898.1518961606445"

------=_Part_10251_1092113898.1518961606445
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I tried that already, but it has not worked.

Thanking you,
Nishka

On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 18 Feb 2018, Nishka Dasgupta wrote: 
>
> > When I run dmesg | less, the file is blank and the error I get is 
> "dmesg: 
> > klogctl failed: Function not implemented". Writing to the kmsg file has 
> no 
> > effect. I can't modify dmesg_restrict either. I am running Ubuntu 14.04 
> > inside WSL (Windows 10). I would appreciate any assistance. 
>
> If you don't hear from anyone who has had this experience, perhaps this 
> link could be useful: 
>
> https://github.com/Microsoft/WSL/issues/1886 
>
> julia 
>
> > 
> > Thanking you, 
> > Nishka 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2- 
> > 2903b82f2c08%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> > 
>

On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 18 Feb 2018, Nishka Dasgupta wrote: 
>
> > When I run dmesg | less, the file is blank and the error I get is 
> "dmesg: 
> > klogctl failed: Function not implemented". Writing to the kmsg file has 
> no 
> > effect. I can't modify dmesg_restrict either. I am running Ubuntu 14.04 
> > inside WSL (Windows 10). I would appreciate any assistance. 
>
> If you don't hear from anyone who has had this experience, perhaps this 
> link could be useful: 
>
> https://github.com/Microsoft/WSL/issues/1886 
>
> julia 
>
> > 
> > Thanking you, 
> > Nishka 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2- 
> > 2903b82f2c08%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> > 
>

On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Sun, 18 Feb 2018, Nishka Dasgupta wrote: 
>
> > When I run dmesg | less, the file is blank and the error I get is 
> "dmesg: 
> > klogctl failed: Function not implemented". Writing to the kmsg file has 
> no 
> > effect. I can't modify dmesg_restrict either. I am running Ubuntu 14.04 
> > inside WSL (Windows 10). I would appreciate any assistance. 
>
> If you don't hear from anyone who has had this experience, perhaps this 
> link could be useful: 
>
> https://github.com/Microsoft/WSL/issues/1886 
>
> julia 
>
> > 
> > Thanking you, 
> > Nishka 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups 
> > "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an 
> > email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2- 
> > 2903b82f2c08%40googlegroups.com. 
> > For more options, visit https://groups.google.com/d/optout. 
> > 
> > 
>

------=_Part_10251_1092113898.1518961606445
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">I tried that already, but it has not worked.<br><br>Thanking you,<br>Nishka<br><br>On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
<br>
<br>&gt; When I run dmesg | less, the file is blank and the error I get is &quot;dmesg:
<br>&gt; klogctl failed: Function not implemented&quot;. Writing to the kmsg file has no
<br>&gt; effect. I can&#39;t modify dmesg_restrict either. I am running Ubuntu 14.04
<br>&gt; inside WSL (Windows 10). I would appreciate any assistance.
<br>
<br>If you don&#39;t hear from anyone who has had this experience, perhaps this
<br>link could be useful:
<br>
<br><a href="https://github.com/Microsoft/WSL/issues/1886" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;" onclick="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;">https://github.com/Microsoft/<wbr>WSL/issues/1886</a>
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Thanking you,
<br>&gt; Nishka
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an
<br>&gt; email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href="http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;" onclick="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>fca3a604-4d70-4feb-b7d2-</a>
<br>&gt; 2903b82f2c08%<a href="http://40googlegroups.com" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;" onclick="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;
<br></blockquote><br>On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
<br>
<br>&gt; When I run dmesg | less, the file is blank and the error I get is &quot;dmesg:
<br>&gt; klogctl failed: Function not implemented&quot;. Writing to the kmsg file has no
<br>&gt; effect. I can&#39;t modify dmesg_restrict either. I am running Ubuntu 14.04
<br>&gt; inside WSL (Windows 10). I would appreciate any assistance.
<br>
<br>If you don&#39;t hear from anyone who has had this experience, perhaps this
<br>link could be useful:
<br>
<br><a href="https://github.com/Microsoft/WSL/issues/1886" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;" onclick="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;">https://github.com/Microsoft/<wbr>WSL/issues/1886</a>
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Thanking you,
<br>&gt; Nishka
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an
<br>&gt; email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href="http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;" onclick="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>fca3a604-4d70-4feb-b7d2-</a>
<br>&gt; 2903b82f2c08%<a href="http://40googlegroups.com" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;" onclick="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;
<br></blockquote><br>On Sunday, February 18, 2018 at 6:51:28 PM UTC+5:30, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Sun, 18 Feb 2018, Nishka Dasgupta wrote:
<br>
<br>&gt; When I run dmesg | less, the file is blank and the error I get is &quot;dmesg:
<br>&gt; klogctl failed: Function not implemented&quot;. Writing to the kmsg file has no
<br>&gt; effect. I can&#39;t modify dmesg_restrict either. I am running Ubuntu 14.04
<br>&gt; inside WSL (Windows 10). I would appreciate any assistance.
<br>
<br>If you don&#39;t hear from anyone who has had this experience, perhaps this
<br>link could be useful:
<br>
<br><a href="https://github.com/Microsoft/WSL/issues/1886" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;" onclick="this.href=&#39;https://www.google.com/url?q\x3dhttps%3A%2F%2Fgithub.com%2FMicrosoft%2FWSL%2Fissues%2F1886\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGZQch6UhPcAs_UyuBKLf2y0hkFLw&#39;;return true;">https://github.com/Microsoft/<wbr>WSL/issues/1886</a>
<br>
<br>julia
<br>
<br>&gt;
<br>&gt; Thanking you,
<br>&gt; Nishka
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups
<br>&gt; &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an
<br>&gt; email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="YWIZ2epTCAAJ" rel="nofollow" onmousedown="this.href=&#39;javascript:&#39;;return true;" onclick="this.href=&#39;javascript:&#39;;return true;">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href="http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;" onclick="this.href=&#39;http://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-&#39;;return true;">groups.google.<wbr>com/d/msgid/outreachy-kernel/<wbr>fca3a604-4d70-4feb-b7d2-</a>
<br>&gt; 2903b82f2c08%<a href="http://40googlegroups.com" target="_blank" rel="nofollow" onmousedown="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;" onclick="this.href=&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2F40googlegroups.com\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNEjt8k9OhR10y0jYLX0ZgJix1hnBQ&#39;;return true;">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow" onmousedown="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;" onclick="this.href=&#39;https://groups.google.com/d/optout&#39;;return true;">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br>&gt;
<br></blockquote></div>
------=_Part_10251_1092113898.1518961606445--

------=_Part_10250_90839243.1518961606444--

