function endHTMLFile(fid)
%%Parameters
%fid            - File id of the html file to close
%%Output
%void
%%
fprintf(fid, ['</body>\n</html>\n']);
fclose(fid);
end