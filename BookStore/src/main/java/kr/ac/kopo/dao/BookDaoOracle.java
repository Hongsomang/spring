package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Book;
import kr.ac.kopo.pager.Pager;

@Repository
public class BookDaoOracle implements BookDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Book> list(Pager pager) {		
		return sql.selectList("book.list", pager);
	}

	@Override
	public void add(Book item) {
		sql.insert("book.add", item);
	}

	@Override
	public Book item(int bookid) {		
		return sql.selectOne("book.item", bookid);
	}

	@Override
	public void update(Book item) {
		sql.update("book.update", item);
	}

	@Override
	public void delete(int bookid) {
		sql.delete("book.delete", bookid);		
	}

	@Override
	public int total(Pager pager) {		
		return sql.selectOne("book.total", pager);
	}

}
